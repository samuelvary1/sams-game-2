require_relative "config/environment"

use CharacterController
run ApplicationController


require 'sinatra/base'

Dir.glob('./{models,helpers,controllers}/*.rb').each { |file| require file }