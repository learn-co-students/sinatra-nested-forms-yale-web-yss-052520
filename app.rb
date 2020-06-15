require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      erb :'/pirates/base'
    end

    get '/new' do 
      erb :'/pirates/new'
    end 

    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])
      @ships = Ship.all()

      erb :'/pirates/show'
    end 

  end
end
