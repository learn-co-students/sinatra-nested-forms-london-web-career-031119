require './environment'

module FormsLab
  class App < Sinatra::Base

    #set :views, './views/pirates'
    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |item|
        Ship.new(item)
      end

      @ships = Ship.all
      erb :'pirates/show'
    end
  end
end
