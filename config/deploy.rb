set :application, 'katemanson.co.uk'
set :deploy_to, "/var/www/#{application}"

# from http://tomcopeland.blogs.com/juniordeveloper/2008/05/mod_rails-and-c.html
namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end

  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end

desc 'Symlink shared artwork folder and database'
task :after_update_code do
  run "ln -s #{shared_path}/artwork #{latest_release}/public/artwork"
  run "ln -s #{shared_path}/config/database.yml #{latest_release}/config/database.yml"
  run "ln -s #{shared_path}/db/data #{latest_release}/db/data"
end
