stage = "production"
rails_root = "/home/deployer/kleopatra/#{stage}/current"

working_directory rails_root

pid "#{rails_root}/tmp/pids/unicorn.pid"
stderr_path "#{rails_root}/log/unicorn.log"
stdout_path "#{rails_root}/log/unicorn.log"
listen "#{rails_root}/tmp/unicorn.sock"

worker_processes 2
timeout 30