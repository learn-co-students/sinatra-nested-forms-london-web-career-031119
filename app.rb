require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    set :views, './views/pirates'

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each{ |details| Ship.new(details )}
      @ship = Ship.all
      erb :show
    end

    get '/' do
      erb :show
    end


  end
end
