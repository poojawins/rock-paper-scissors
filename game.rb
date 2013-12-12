require 'bundler'
Bundler.require
require './lib/throw.rb'

module Game
  class RPS_App < Sinatra::Application

    get '/throw/:type'do
      user_move = "#{params[:type]}"
      new_game = Throw.new(user_move)
      my_computer = new_game.comp_move
      erb :throw
    end

  end
end

# before '/*'do
    #   unless params[:type] =="rock" || params[:type] =="paper" || params[:type] =="scissor"
    #     redirect '/beta'
    #   end
    # end
