class ApplicationController < Sinatra::Base
  enable :method_override
  set :root, File.join(__dir__, "..")

  get '/' do 
  	erb :index
  end


  # you will definitely want to change these into dynamic routes later on

  get '/game/chapter1' do 
  	erb :"chapters/chapter1"
  end

  get '/game/chapter2' do 
  	erb :"chapters/chapter2"
  end

  get '/game/chapter3' do 
  	erb :"chapters/chapter3"
  end

  get '/game/chapter4' do 
  	erb :"chapters/chapter4"
  end

  get '/game/chapter5' do 
  	erb :"chapters/chapter5"
  end

  get '/game/chapter6' do 
  	erb :"chapters/chapter6"
  end

  get '/game/victory' do 
  	erb :"chapters/victory"
  end





end
