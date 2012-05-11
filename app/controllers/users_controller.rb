class UsersController < ApplicationController
  
  def create
    @user = User.new(params[:user])
    @user.create(params[:user])
  end
  
end