require 'pry'

class ApplicationController < Sinatra::Base
  enable :method_override
  set :root, File.join(__dir__, "..")

  get '/' do 
  	erb :index
  end

  get '/:chapter/pickup' do
    @location = Location.find_by(id: params[:chapter][-1])
    @items = @location.items
    erb :"chapters/#{params[:chapter]}/#{params[:chapter]}_pickup"
  end

  post '/:chapter/pickup' do 
    @location = Location.find_by(id: params[:chapter][-1])
    # binding.pry
    @items = @location.items
    @character = Character.first
    # binding.pry
    @pickup = @items.find do |item|
      item.name == params[:item][:name]
    end

    if @pickup.nil?
      "Sorry, that item isn't here"
    else
      @character.pickup_item(@pickup, @location)
    end
  end

  get '/game/:chapter/plot' do 
    @location = Location.find_by(id: params[:chapter][-1])
    erb :"chapters/#{params[:chapter]}/#{params[:chapter]}_plot"
  end

  post '/game/:chapter/plot' do 
    # binding.pry
    @location = Location.find_by(id: params[:chapter][-1])
    @character = Character.first
    # binding.pry
    erb :"chapters/#{params[:chapter]}/#{params[:chapter]}_plot"
  end

  post '/game/:chapter/details' do
    @location = Location.find_by(id: params[:chapter][-1])
    erb :"chapters/#{params[:chapter]}/#{params[:chapter]}_details"
  end

  get '/game/:chapter/current_items' do 
    # binding.pry
    @character = Character.first    
    @location = Location.find_by(id: params[:chapter][-1])

    erb :"chapters/#{params[:chapter]}/#{params[:chapter]}_items"
  end

end
