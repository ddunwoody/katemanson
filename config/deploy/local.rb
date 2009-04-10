set :scm, :none
set :repository,  '/home/david/dev/projects/katemanson'
#set :deploy_via, :copy

server 'localhost', :app, :web, :db, :primary => true
