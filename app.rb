require './environment'

module FormsLab
  class App < Sinatra::Base


    get '/' do
  erb :root
    end

    post '/pirates' do
      # binding.pry
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])

      @ships = params[:pirate][:ships].each do |i|
        Ship.new(i[:name], i[:type], i[:booty])

      end

      erb :show
    end

    get '/new' do


    erb :new
    end


  end
end
