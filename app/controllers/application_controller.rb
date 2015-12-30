require 'pry'

class ApplicationController < Sinatra::Base
  enable :method_override
  set :root, File.join(__dir__, "..")

  get '/' do 
  	erb :index
  end

  get '/pickup' do 
    erb :pickup
  end

  post '/pickup' do 
    items = Location.first.items
    pickup = items.find do |item|
      item.name == params[:item][:name]
    end

    if pickup.nil?
      "Sorry, that item isn't here"
    else
      pickup.location_id = nil
      Character.first.items << pickup
      "You picked up #{pickup.name}"
    end
  end

  # you will definitely want to change these into dynamic routes later on

  # get '/game/chapter1' do 
  # 	erb :"chapters/chapter1"
  # end

  post '/game/chapter1' do 
    @character = Character.find_by(first_name: params[:character][:first_name])

    @character.save

    @area1 = Location.all[0]
    # binding.pry

    erb :"chapters/chapter1"
  end

  get '/game/chapter1' do 
    erb :"chapters/chapter1"
  end

  post '/current_items' do 
    # binding.pry
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
