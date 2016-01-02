require 'pry'

class ApplicationController < Sinatra::Base
  enable :method_override
  set :root, File.join(__dir__, "..")

  get '/' do 
  	erb :index
  end

  get '/pickup' do 
    # good start here just base the ids off the submit form and keep working on this
    # all you have to do is seed the area with the items you want and you're halfway there
    # then write a controller action that checks if the item from the first area is in the character's
    # inventory and if they don't have it, raise an exception or something. If they do have it, redirect to 
    # the following chapter

    # you should eventually be able to make everything dynamic. Do not let this project die until you have accomplished that by god.
    # otherwise stick with one character for now I guess and eventually add sessions and a login so the player can
    # come back and finish their game later.
    @items = Location.find_by(params[:id]).items
    @area = Location.find_by(params[:id])
    erb :pickup
  end

  post '/pickup' do 
    @items = Location.find_by(params[:id]).items

    @area = Location.find_by(params[:id])
    @character = Character.first
    # binding.pry
    @pickup = @items.find do |item|
      item.name == params[:item][:name]

    end

    if @pickup.nil?
      "Sorry, that item isn't here"

    else
      @character.pickup_item(@pickup, @area)

    end
  end

  # you will definitely want to change these into dynamic routes later on

  # get '/game/chapter1' do 
  # 	erb :"chapters/chapter1"
  # end

  post '/game/chapter1' do 

    @area = Location.first
    @character = Character.find_by(first_name: params[:character][:first_name])
    binding.pry 
    erb :"chapters/chapter1"
  end

  get '/game/chapter1' do 

    erb :"chapters/chapter1"
  end

  get '/game/chapter1/details' do
    erb :"details/chapter1"
  end

  get '/current_items' do 
    # binding.pry
    @character = Character.first
    erb :"characters/items"
  end

  get '/game/chapter2' do 
    @area2 = Location.all[1]
    
  	erb :"chapters/chapter2"
  end

  get '/game/chapter3' do 
    @area3 = Location.all[2]

  	erb :"chapters/chapter3"
  end

  get '/game/chapter4' do 
    @area4 = Location.all[3]

  	erb :"chapters/chapter4"
  end

  get '/game/chapter5' do 
    @area5 = Location.all[4]

  	erb :"chapters/chapter5"
  end

  get '/game/chapter6' do 
    @area6 = Location.all[5]

  	erb :"chapters/chapter6"
  end

  get '/game/victory' do 
  	erb :"chapters/victory"
  end
end
