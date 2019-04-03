require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do

      erb :welcome
    end 

    get '/new' do

      erb :root
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      ships = params[:pirate][:ships]

      @ship_1 = Ship.new(ships[0])
      @ship_2 = Ship.new(ships[1])

      erb :'pirates/show'
    end

    # code other routes/actions here

  end
end
