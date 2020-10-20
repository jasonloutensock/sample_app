class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination' #flash.now will cause the error to vanish on re-render
      render 'new'
    end
  end
  
  def destroy
  end
  

end
