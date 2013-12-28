module SessionsHelper
  def logged_in?
    session[:player_id].present?
  end

  def authenticated!
    unless logged_in?
      redirect_to new_session_path
    end
  end

  def current_player
    @current_player ||= Player.find_by(id: session[:player_id])
  end
end