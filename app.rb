require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @transformer = PigLatinizer.new
    @transformer.piglatinize(params)
  end

end
