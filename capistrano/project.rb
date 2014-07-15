namespace :project do
  desc "Starts server through nginx (passenger)."
  task :start do
    run "sudo service nginx start"
    run "touch #{current_path}/tmp/restart.txt"
  end

  desc "Stops server through nginx (passenger)."
  task :stop do
    run "sudo service nginx stop"
  end

  desc "Restarts the server through nginx (passenger)."
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
    run "sudo service nginx restart"
  end

  desc "Updates the project."
  task :update do
    deploy.update
    deploy.link_uploads
    db.migrate
  end

  desc "Updates the project and restarts the server."
  task :update_restart do
    update
    restart
  end

  desc "Tail production log files"
  task :logs do
    trap("INT") { puts 'Interupted'; exit 0; }
    run "tail -f #{shared_path}/log/production.log" do |channel, stream, data|
      puts "#{channel[:host]}: #{data}"
      break if stream == :err
    end
  end

  desc "Rails console"
  task :console do
    hostname = find_servers_for_task(current_task).first
    exec "ssh -l #{user} #{hostname} -t 'source .rvm/scripts/rvm &&" \
      "cd #{current_path} && bundle exec rails c #{rails_env}'"
  end
end
