# project information
set :application, "PROJECT_NAME"
set :repository,  "git@bitbucket.org:magnet-cl/PROJECT_NAME.git"
set :scm, "git"

# servers
task :production do
  set :branch, "master"
  role :web, ""
  role :db,  "", :primary => true
end
task :staging do
  set :branch, "development"
  role :web, ""
  role :db,  "", :primary => true
end

# user configuration
set :use_sudo, false
set :user, "magnet"

# environment configuration
set :default_shell, "/bin/zsh --login"

# deployment options
set :deploy_to, "/home/#{user}/#{application}"
set :deploy_via, :remote_cache
set :normalize_asset_timestamps, false

# dependencies installation
require 'bundler/capistrano'

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# the database configuration is required during the precompilation of assets
before "deploy:assets:precompile", "deploy:link_database_configuration"

namespace :deploy do
  desc "Creates symbolic link for database.yml"
  task :link_database_configuration do
    run "ln -nfs #{shared_path}/database.yml #{release_path}/config/database.yml"
  end
end

namespace :deploy do
  desc "Creates symbolic link for user uploads"
  task :link_uploads do
    run "ln -nfs #{shared_path}/uploads #{release_path}/public/uploads"
  end
end
