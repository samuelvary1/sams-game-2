class CharacterController < ApplicationController

	enable :method_override

	# get '/' do 
 #  	erb :index
 #  end
  
  get '/choose_your_character' do
  	erb :"choose_your_character"
  end

  get '/list_characters' do 
  	@characters = Character.all
  	erb :"list_characters"
  end
end