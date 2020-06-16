require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do 
      erb :root
    end 

    get '/new' do 
      # put a full path to the view ERB file
      erb :'pirates/new'
    end 

    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      params[:pirate][:ships].each do |details|
        Ship.new(details[:name], details[:type], details[:booty])
      end 
      @ships = Ship.all 
      erb :'pirates/show'
    end 
  end
end
