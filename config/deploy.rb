# config valid only for current version of Capistrano
lock '3.10.0'

server 'webserver3.hitcents.com', roles: %w[app db web]
set :application, "hunter-marine"

# if you get permissions errors related to assets or bundled gems, set these to true
set :fix_bundle_ownership, true
set :fix_asset_ownership, true

set :rvm_ruby_string, 'ruby-2.2.5-customopenssl'