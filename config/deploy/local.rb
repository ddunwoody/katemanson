set :scm, :none
set :repository,  '/home/david/dev/projects/katemanson'
set :deploy_via, :copy
set :copy_dir, "/tmp/#{application}/copy_dir"
set :copy_exclude, %w(.git db log config/database.yml public/artwork)

server 'localhost', :app, :web, :db, :primary => true

FileUtils.mkdir_p copy_dir
