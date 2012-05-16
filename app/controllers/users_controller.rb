class UsersController < ApplicationController
  
  # before_filter :is_admin?, except: [:update, :edit]
  
  def index
    @user = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to :users
  end
  
  def edit
    @user = User.find_by_id(params[:id])
  end
  
  def update
    @user = User.find_by_id(params[:id])
    @user.update_attributes(params[:user])
  end
  
  def delete  
    @user = User.find_by_id(params[:id])
    @user.destroy
    redirect_to :users
  end
end