require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name],params[:pirate][:weight], params[:pirate][:height])
      #binding.pry
      
      params[:pirate][:ships].each do |attributes|
        Ship.new(attributes[:name],attributes[:type],attributes[:booty])
      end

      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
