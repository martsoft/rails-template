# Extended Server Syntax
# ======================
server 'example.com', user: 'deploy', roles: %w{web app db}

set :deploy_to, '/path/to/project/'
set :branch, ask('What branch do you want to deploy?', 'master')

set :rails_env, :staging
set :unicorn_rack_env, :staging