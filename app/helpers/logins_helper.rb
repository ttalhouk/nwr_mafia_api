module LoginsHelper
  def current_user
    Admin.find(session[:session_id])
  end

  def logged_in?
    !current_user.nil?
  end
end
