class CharacterController < ApplicationController

	enable :method_override

  # make these dynamic 
  get '/characters/1' do 
    @alina = Character.find_by(id: 1)
    erb :"characters/character1"
  end

  # get '/characters/2' do
  #   @pavel = Character.find_by(id: 2) 
  #   erb :"characters/character2"
  # end

  # get '/characters/3' do 
  #   @babaev = Character.find_by(id: 3)
  #   erb :"characters/character3"
  # end

  # get '/characters/4' do 
  #   @bulgakov = Character.find_by(id: 4)
  #   erb :"characters/character4"
  # end


  # get '/list_characters' do 
  # 	@characters = Character.all
  # 	erb :"/characters/list_characters"
  # end
end