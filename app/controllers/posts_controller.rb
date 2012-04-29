class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def show
  end

  def edit
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to :root
    end
  end
  
  def update
    
  end
  
  def destroy
    
  end
end
