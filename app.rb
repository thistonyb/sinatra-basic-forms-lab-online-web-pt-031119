require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do

    erb :index
  end

  get '/create_puppy' do

    erb :create_puppy
  end

  post '/create_puppy' do
    @name = params[:name]
    @breed = params[:breed]
    @months_old = params[:months_old]

    erb :display_puppy
  end
end
