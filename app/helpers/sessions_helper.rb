module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id #temporary session - will expire on browser close
  end
end
