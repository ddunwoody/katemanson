set :scm, :git
set :repository,  'git://github.com/ddunwoody/katemanson.git'

server 'katemanson.co.uk', :app, :web, :db, :primary => true
