require './environment'

module FormsLab
  class App < Sinatra::Base

    # set :views, "views"
    # code other routes/actions here
    get '/' do
      erb :root
    end
    
    get '/new' do 
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:booty])
      @ship1 = Ship.new(params[:ships][0][:name], params[:ships][0][:type], params[:ships][0][:booty])
      @ship2 = Ship.new(params[:ships][0][:name], params[:ships][0][:type], params[:ships][0][:booty])
      erb :'pirates/show'
    end


  end
end
