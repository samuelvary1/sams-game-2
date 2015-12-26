class ApplicationController < Sinatra::Base
  enable :method_override
  set :root, File.join(__dir__, "..")

  get '/' do 
  	erb :index
  end
  
  get '/choose_your_character' do
  	erb :"choose_your_character"
  end

  get '/list_characters' do 
  	erb :"list_characters"
  end
end
