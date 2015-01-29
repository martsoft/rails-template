# config valid only for Capistrano 3.1
lock '3.2.1'

set :application, '$PROJECT_NAME'

set :stages, %w(production staging)
set :default_stage, :staging

set :repo_url, '$REPO_URL'
set :port, 22
set :scm, :git

set :keep_releases, 10

set :linked_files,  %w{config/database.yml config/settings.local.yml}
set :linked_dirs,   %w{bin log tmp/pids tmp/cache tmp/sockets}

# DEPLOY
# --------------------------------------------
namespace :deploy do
  task :restart do
    invoke 'unicorn:legacy_restart'
  end

  before :compile_assets, 'bower:install'

  after :publishing, :restart
  after :finishing, 'deploy:cleanup'
end

# BOWER
# --------------------------------------------
namespace :bower do
  desc 'Update bower dependencies'
  task :update do
    on roles(:app) do
      within release_path do
        execute :bower, :install, '-f'
      end
    end
  end

  desc 'Install bower dependencies'
  task :install do
    on roles(:app) do
      within release_path do
        execute :bower, :install
      end
    end
  end
end
