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
    @items = @location.items
    @character = Character.first
    # binding.pry
    @pickup = @items.find do |item|
      item.name == params[:item][:name]
    end

    if @pickup.nil?
      # binding.pry
      "Sorry, that item isn't here"
      # how do i display this message on the page without going to a blank white page (with the text)
    else
      @character.pickup_item(@pickup, @location)
      "You have picked up the #{@pickup.name}"
      # redirect to '/chapter#{params[:chapter]}/pickup'
      # how do i display this message on the page without going to a blank white page (with the text)
    end
  end

  get '/:chapter/plot' do
    @status = "alive" 
    # if Location.first.items.find_by(id: 2)
    @character = Character.first
    @location = Location.find_by(id: params[:chapter][-1])
    erb :"chapters/#{params[:chapter]}/#{params[:chapter]}_plot"
  end

  get '/:chapter/details' do
    @location = Location.find_by(id: params[:chapter][-1])
    erb :"chapters/#{params[:chapter]}/#{params[:chapter]}_details"
  end

  get '/:chapter/current_items' do 
    # binding.pry
    @character = Character.first    
    @location = Location.find_by(id: params[:chapter][-1])

    erb :"chapters/#{params[:chapter]}/#{params[:chapter]}_items"
  end

  get '/:chapter/fail' do 
    @location = Location.find_by(id: params[:chapter][-1])

    erb :"chapters/#{params[:chapter]}/#{params[:chapter]}_fail"
  end
end
