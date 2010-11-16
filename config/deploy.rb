require "bundler/capistrano"

django = "django.webflows.fr"

set :application, "noelle"
set :repository,  "git@github.com:itkin/noelle.git"

set :scm, :git
set :deploy_to, "~/noelle"

set :use_sudo, false

set :user, "rails"
set :password,  Proc.new {Capistrano::CLI.password_prompt("Rails user password on django : ")}
#set :scm_passphrase, "rVmEKX42912"#Proc.new {Capistrano::CLI.password_prompt("Rails user password on django : ")}

set :branch, "master"

role :web, django
role :app, django
role :db,  django, :primary => true

default_run_options[:pty] = true  # Must be set for the password prompt from git to work
set :deploy_via, :remote_cache
set :git_enable_submodules, 1

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
#  desc "Update the crontab file"
#  task :update_crontab, :roles => :db do
#   run "cd #{release_path} && bundle exec whenever --update-crontab #{application}"
#  end
end

task :copy_production_database_configuration do
  run "cp #{shared_path}/config/database.yml #{release_path}/config/database.yml"
end

namespace :compass do
  task :compile, :roles => :app do
    run "cd #{release_path} && bundle exec compass compile -e production --force"
  end
end

after "deploy:update_code", :copy_production_database_configuration
after "bundle:install", 'compass:compile'
after "compass:compile", "deploy:update_crontab"




