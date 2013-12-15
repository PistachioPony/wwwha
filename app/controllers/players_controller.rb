class PlayersController < ApplicationController

  def index
    @player = Player.all
  end

  # GET /users/1
  def show
    @player = Player.find(params[:id])
  end

  # GET /users/new
  def new
    @player = Player.new
  end
end