class PlayersController < ApplicationController
  before_action :logged_in!, :authorize_player!, only: [:edit, :update, :destroy]

  def index
    #@player = Player.all
  end

  # POST players
  def create 
    @player = Player.new(player_params)

    if @player.save
      redirect_to new_session_path, notice: 'You are now a Playah! Sign In!'
    else
      render action: 'new'
    end
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1
  def show
    @player = Player.find(params[:id])
  end 

    # GET /players/1/edit
  def edit
  end  

  # PATCH/PUT /players/1
  def update
    if @player.update(player_params)
      redirect_to @player, notice: 'Player was successfully updated.'
    else
      render action: 'edit'
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