require 'bundler'
require 'sinatra'
Bundler.require
require './lib/throw.rb'

module Game
  class RPS_App < Sinatra::Application

    get '/' do
      erb :index
    end

    get '/throw' do
      erb :index
    end

    get '/throw/:type'do
      @user_move = "#{params[:type]}"
      new_game = Throw.new("#{params[:type]}")
      erb :throw
    end

  end
end

# before '/*'do
    #   unless params[:type] =="rock" || params[:type] =="paper" || params[:type] =="scissor"
    #     redirect '/beta'
    #   end
    # end
