module SessionsHelper
  def current_player
    @current_player ||= Player.find_by(id: session[:player_id])
  end

  def logged_in?
    current_player.present?
  end

  def logged_in!
    redirect_to new_session_path unless logged_in?
  end

  def current_player?(player)
    current_player == player
  end
end