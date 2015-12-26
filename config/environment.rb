
require 'bundler/setup'

Bundler.require

$: << "."

Dir['app/controllers/*.rb'].each {|f| require f}
Dir['app/models/*.rb'].each {|f| require f}

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details)
