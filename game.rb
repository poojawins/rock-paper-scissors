require 'bundler'
Bundler.require
require './lib/throw.rb'

module Game
  class RPS_App < Sinatra::Application

    get '/' do
      erb :index
    end

    get '/:type'do
      @user_move = "#{params[:type]}"
      new_game = Throw.new("#{params[:type]}")
      @comp_move = new_game.computer_move
      @winner = new_game.winner
      erb :move
    end


  end
end

# before '/*'do
    #   unless params[:type] =="rock" || params[:type] =="paper" || params[:type] =="scissor"
    #     redirect '/beta'
    #   end
    # end
