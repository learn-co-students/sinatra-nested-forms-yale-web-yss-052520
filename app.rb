require './environment'

module FormsLab
  class App < Sinatra::Base
    set :views, "views"

    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      pirate = params[:pirate]
      @pirate = Pirate.new(pirate["name"], pirate["weight"], pirate["height"])
      
      ship_1 = params[:pirate][:ships][0]
      @ship_1 = Ship.new(ship_1[:name], ship_1[:type], ship_1[:booty])

      ship_2 = params[:pirate][:ships][1]
      @ship_2 = Ship.new(ship_2[:name], ship_2[:type], ship_2[:booty])
      erb :"pirates/show"
    end
  end


end

