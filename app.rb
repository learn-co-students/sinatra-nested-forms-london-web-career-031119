require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root     
    end
    
    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirates = Pirate.new(params[:pirate])
      # params[:pirate][:ships][0] do |details|
      params[:pirate][:ships].each do |details|
      Ship.new(details)
      # binding.pry
    end
      @ships = Ship.all
      erb :'pirates/show'
    end
  end
end

        # Ship.new(i[:name], i[:type], i[:booty])
      # Ship.new(details)
