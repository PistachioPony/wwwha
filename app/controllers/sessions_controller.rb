class SessionsController < ApplicationController
  def new
  end

  def create
    player = Player.find_by(email: params[:email])

    if player && player.authenticate(params[:password])
      session[:player_id] = player.id
      flash[:notice] = "You Are Now Logged In!"
      redirect_to(player)
    else
      flash[:notice] = "Incorrect Login. Try again."
      redirect_to(new_session_path)
    end
  end

  def destroy
    session[:player_id] = nil
    redirect_to(root_path)
  end
end