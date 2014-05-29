# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts


require "bundler/capistrano"

set :stages, %w(production staging)
set :default_stage, 'production'

require 'capistrano/ext/multistage'

server "173.255.234.240", :web, :app, :db, primary: true

set :application, "kleopatra"
set :user, "deployer"

set :deploy_via, :remote_cache
set :use_sudo, false

set :scm, "git"
set :repository, "git@github.com:AlexanderFisenko/#{application}.git"
set :branch, "master"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

after "deploy", "deploy:cleanup" # keep only the last 5 releases
task :lf do
  find_servers_for_task(current_task).each do |current_server|
    exec "ssh #{user}@#{current_server.host} -t 'cd #{current_path}; tail -f log/production.log'"
  end
end
namespace :deploy do
  %w[start stop restart].each do |command|
    desc "#{command} unicorn server"
    task command, roles: :app, except: {no_release: true} do
      run "/etc/init.d/unicorn_#{application}_#{stage} #{command}"
    end
  end

  task :setup_config, roles: :app do
    run "mkdir -p #{shared_path}/config"

    put File.read("config/templates/unicorn_init.sh"), "#{shared_path}/config/unicorn_init.sh"
    put File.read("config/templates/unicorn.rb"), "#{shared_path}/config/unicorn.rb"
    put File.read("config/templates/database.yml"), "#{shared_path}/config/database.yml"
    put File.read("config/templates/nginx.conf"), "#{shared_path}/config/nginx.conf"


    # sudo "ln -nfs #{shared_path}/config/nginx.conf /etc/nginx/sites-enabled/#{application}_#{stage}"
    # sudo "ln -nfs #{shared_path}/config/unicorn_init.sh /etc/init.d/unicorn_#{application}_#{stage}"
  end

  after "deploy:setup", "deploy:setup_config"


  task :symlink_shared_folders, roles: :app do
    run "ln -s #{shared_path}/system/uploads #{release_path}/public/uploads"
  end

  task :symlink_config_files, roles: :app do
    run "ln -nfs #{shared_path}/config/unicorn.rb #{release_path}/config/unicorn.rb"
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    run "ln -nfs #{shared_path}/config/secrets.yml #{release_path}/config/secrets.yml"
    run "ln -nfs #{shared_path}/config/credentials.yml #{release_path}/config/credentials.yml"
  end

  after "deploy:finalize_update", "deploy:symlink_config_files", "deploy:symlink_shared_folders"

end
