# -*- encoding : utf-8 -*-
require 'bundler/capistrano'
load 'deploy/assets'

set :default_env, 'production'
set :rails_env, ENV['rails_env'] || ENV['RAILS_ENV'] || default_env

joscho = "188.165.255.184"

set :application, "noelle"
set :repository,  "git://github.com/itkin/noelle.git"

set :scm, :git
set :deploy_to, "~/noelle"

set :use_sudo, false

set :user, "rails"
set :scm_passphrase, Capistrano::CLI.password_prompt("Rails user password on joscho : ")

set :branch, "master"

role :web, joscho
role :app, joscho
role :db,  joscho, :primary => true

default_run_options[:pty] = true  # Must be set for the password prompt from git to work
set :deploy_via, :remote_cache
set :git_enable_submodules, 1

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end

  desc "Update the crontab file"
  task :update_crontab, :roles => :db do
    run "cd #{release_path} && bundle exec whenever --update-crontab #{application}"
  end
end

task :copy_production_database_configuration do
  run "cp #{shared_path}/config/database.yml #{release_path}/config/database.yml"
end

namespace :compass do
  task :compile, :roles => :app do
    run "cd #{release_path} && bundle exec compass compile -e production --force"
  end
end

task :remove_config_ru do
  run "rm -f #{release_path}/config.ru"
end

after "deploy:update_code", :remove_config_ru
after "deploy:update_code", :copy_production_database_configuration
before 'deploy:assets:precompile', :copy_production_database_configuration
after "bundle:install", 'compass:compile'
