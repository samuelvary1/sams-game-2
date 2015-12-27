class CharacterController < ApplicationController

	enable :method_override

	# get '/' do 
 #  	erb :index
 #  end
  
  get '/characters' do
  	erb :"/characters/character"
  end

  get '/characters/:id' do
  	@characters = Character.all
  	@characters.select do |character|
  		character.id == params[:id]
  	end.first
  	erb :'/characters/show'
  end

  get '/list_characters' do 
  	@characters = Character.all
  	erb :"/characters/list_characters"
  end
end