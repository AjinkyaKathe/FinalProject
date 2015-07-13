module SessionsHelper

  def log_in(user)
    session[:user_id]=user_id
  end
  
  def cureent_user
    @cureent_user=@cureent_user || Registration.find_by(id: session[:user_id]) 
  end

  def logged_in?
   !cureent_user.nil?
  end

  
end
