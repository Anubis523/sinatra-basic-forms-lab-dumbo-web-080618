require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base
  get '/' do 
    @page_title = "Index"
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/new' do
    @puppy = Puppy.new("\n#{params[:name]}", "\n#{params[:breed]}", "\n#{params[:age]}")
    erb :display_puppy
  end
end