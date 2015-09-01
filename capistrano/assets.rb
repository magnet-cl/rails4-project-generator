def shared_manifest_path
  @shared_manifest_path ||= capture("ls #{shared_path.shellescape}/#{shared_assets_prefix}/.sprockets-manifest*").strip
end

namespace :deploy do
  namespace :assets do
    desc <<-DESC
      This task is overwritten in order to consider the new manifest file path.
      Related information:
      https://github.com/rails/sprockets/commit/ce6508e8540f829c6221afa39fdf718e4dded096

      Run the asset precompilation rake task. You can specify the full path \
      to the rake executable by setting the rake variable. You can also \
      specify additional environment variables to pass to rake via the \
      asset_env variable. The defaults are:

        set :rake,      "rake"
        set :rails_env, "production"
        set :asset_env, "RAILS_GROUPS=assets"
    DESC
    task :precompile, :roles => lambda { assets_role }, :except => { :no_release => true } do
      run <<-CMD.compact
        cd -- #{latest_release} &&
        RAILS_ENV=#{rails_env.to_s.shellescape} #{asset_env} #{rake} assets:precompile
      CMD

      if capture("ls -1 #{shared_path.shellescape}/#{shared_assets_prefix}/.sprockets-manifest* | wc -l").to_i > 1
        raise "More than one asset manifest file was found in '#{shared_path.shellescape}/#{shared_assets_prefix}'.  If you are upgrading a Rails 3 application to Rails 4, follow these instructions: http://github.com/capistrano/capistrano/wiki/Upgrading-to-Rails-4#asset-pipeline"
      end

      # Sync manifest filenames across servers if our manifest has a random filename
      if shared_manifest_path =~ /.sprockets-manifest-.+\./
        run <<-CMD.compact
          [ -e #{shared_manifest_path.shellescape} ] || mv -- #{shared_path.shellescape}/#{shared_assets_prefix}/.sprockets-manifest* #{shared_manifest_path.shellescape}
        CMD
      end

      # Copy manifest to release root (for clean_expired task)
      run <<-CMD.compact
        cp -- #{shared_manifest_path.shellescape} #{current_release.to_s.shellescape}/assets_manifest#{File.extname(shared_manifest_path)}
      CMD
    end


    desc <<-DESC
      [internal] Updates the mtimes for assets that are required by the current release.
      This task runs before assets:precompile.

      This task is overwritten in order to apply the following fix:
      https://github.com/capistrano/capistrano/pull/609
    DESC
    task :update_asset_mtimes, :roles => lambda { assets_role }, :except => { :no_release => true } do
      # Fetch assets/manifest contents.
      manifest_content = capture("[ -e '#{shared_path.shellescape}/#{shared_assets_prefix}/.sprockets-manifest*' ] && cat #{shared_path.shellescape}/#{shared_assets_prefix}/.sprockets-manifest* || echo").strip

      if manifest_content != ""
        current_assets = parse_manifest(manifest_content)
        logger.info "Updating mtimes for ~#{current_assets.count} assets..."
        put current_assets.map{|a| "#{shared_path}/#{shared_assets_prefix}/#{a}" }.join("\n"), "#{deploy_to}/TOUCH_ASSETS", :via => :scp
        run <<-CMD.compact
          cat #{deploy_to.shellescape}/TOUCH_ASSETS | while read asset; do
            touch -c -- "$asset";
          done &&
          rm -f -- #{deploy_to.shellescape}/TOUCH_ASSETS
        CMD
      end
    end
  end
end
