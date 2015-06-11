# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'calagator'
set :repo_url, 'git@github.com:calagator/calagator.org.git'

ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

set :deploy_to, '/var/www/calagator'

set :linked_files, %w{ config/database.yml config/newrelic.yml config/initializers/errbit.rb }

set :linked_dirs, %w{
  log
  tmp/pids
  tmp/cache
  tmp/sockets
  vendor/bundle
  public/system
}

set :default_env, {
  path: "#{shared_path}/ruby/bin:#{shared_path}/bin:$PATH:/sbin",
  rails_env: fetch(:rails_env)
}

set :bundle_flags, '--quiet'


namespace :deploy do
  task :create_shared_db_dir do
    on roles(:app) do
      execute :mkdir, '-pv', "#{shared_path}/db"
    end
  end

  [:start, :stop, :reload].each do |t|
    desc '#{t} the application'
    task t do
      on roles(:app), in: :sequence, wait: 5 do
        execute :sudo, t, fetch(:application)
      end
    end
  end

  desc "restart the application (or start it, if it's not running)"
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute "sudo restart #{fetch(:application)} || sudo start #{fetch(:application)}"
    end
  end

  desc "clear the Rails cache and other temporary files"
  task :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
       within release_path do
         execute :rake, 'tmp:cache:clear'
       end
    end
  end

  after :finishing, 'deploy:cleanup'
end

before  'deploy:assets:precompile', 'deploy:migrate'
before  'deploy:migrate', 'deploy:create_shared_db_dir'
after   'deploy:updated', 'deploy:clear_cache'
after   'deploy:updated', 'deploy:restart'
after   'deploy:published', 'airbrake:deploy'

namespace :calagator do
  desc "Update counter caches"
  task :update_counter_caches do
    on roles(:db) do
      within release_path do
        execute :rake, :update_counter_caches
      end
    end
  end

  namespace :sunspot do
    desc "Rebuild the solr index"
    task :reindex do
      on roles(:db) do
        within release_path do
          execute :rake, 'sunspot:reindex:calagator'
        end
      end
    end
  end
end
