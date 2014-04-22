namespace :db do
  desc "Database migration."
  task :migrate do
    run "cd #{current_path} && RAILS_ENV=production rake db:migrate"
  end

  desc "Database initialization."
  task :init do
    run "cd #{current_path} && RAILS_ENV=production bundle exec rake db:drop"
    run "cd #{current_path} && RAILS_ENV=production bundle exec rake db:create"
    run "cd #{current_path} && RAILS_ENV=production bundle exec rake db:migrate"
  end

  desc "Load seeds."
  task :seed do
    run "cd #{current_path} && RAILS_ENV=production bundle exec rake db:seed"
  end
end
