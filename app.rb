require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(params[:player_1_name], params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    erb :play
  end

  get '/attack' do
    @attacker = $game.attacker.name
    being_attacked = $game.being_attacked
    $game.attack($game.being_attacked)
    @being_attacked_name = being_attacked.name
    @being_attacked_hitpoints = being_attacked.hitpoints

    erb :attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
