set :rails_env, 'production'
server 'lucca.stumptownsyndicate.org', user: 'calagator', roles: %w{app db web}

# Travis Deployment
set :branch, ENV['TRAVIS_BRANCH'] if ENV['TRAVIS_BRANCH']
set :ssh_options, keys: ["config/deploy/deploy_rsa"] if File.exist?("config/deploy/deploy_rsa")

