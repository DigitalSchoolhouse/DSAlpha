class SessionsController < ApplicationController
  before_filter :login_user!, only: [:logout]
  def login
    
  end
  
  def create
    user = User.find_by_email(params[:email])
    if user.present?
      if user.authenticate(params[:password])
        session[:user] = user.id
        redirect_to root_url
      else
        render :new
      end
    else
      render :new
    end
  end
  
  def logout
    reset_session
    redirect_to :root
  end
end