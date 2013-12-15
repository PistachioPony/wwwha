class PlayersController < ApplicationController

  def index
    @player = Player.all
  end

  # GET /players/1
  def show
    @player = Player.find(params[:id])
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # POST players
  def create 
    @player = Player.new(player_params)

    if @player.save
      redirect_to @player, notice: 'You are now a Player!'
    else
      render action: 'new'
    end
  end

  # DELETE /players/1
  def destroy
    @player.destroy
    redirect_to players_url, notice: 'Player was successfully destroyed.'
  end

  private

  # Only allow a trusted parameter "white list" through.
  def player_params
    params.require(:player).permit(:name, :email, :password, :password_confirmation)
  end

  def authorize_player!
    @player = Player.find(params[:id])
    redirect_to new_session_path unless current_player?(@player)
  end

end