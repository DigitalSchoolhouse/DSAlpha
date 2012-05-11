module SessionsHelper
  
  def current_user
    @current_user ||= User.find_by_id(session[:user])
  end
  
  def login_user!
    if current_user.nil?
      redirect_to login_url
    end
  end
  
end