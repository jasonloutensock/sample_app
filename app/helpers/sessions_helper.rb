module SessionsHelper
  session[:user_id] = user.id #temporary session - will expire on browser close
end
