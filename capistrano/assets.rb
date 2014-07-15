namespace :deploy do
  namespace :assets do
    desc <<-DESC
      [internal] Updates the mtimes for assets that are required by the current release.
      This task runs before assets:precompile.

      This task is overwritten in order to apply the following fix:
      https://github.com/capistrano/capistrano/pull/609
    DESC
    task :update_asset_mtimes, :roles => lambda { assets_role }, :except => { :no_release => true } do
      # Fetch assets/manifest contents.
      manifest_content = capture("[ -e '#{shared_path.shellescape}/#{shared_assets_prefix}/manifest*' ] && cat #{shared_path.shellescape}/#{shared_assets_prefix}/manifest* || echo").strip

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
