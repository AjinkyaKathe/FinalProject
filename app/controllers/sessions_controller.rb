class SessionsController < ApplicationController
  def new
  end

  def create
    user=Registration.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      log_in user #putting user into session
      redirect_to user
    else
      flash[:danger]='Invalid email/password combination'
      render 'new'
  end
end
  def destroy
   flash[:notice] = 'Successfully checked out'
   redirect_to root_path,:flash => { :success => "Message" }
   reset_session
    
  end
end
