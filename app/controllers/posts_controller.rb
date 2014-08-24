class PostsController < ApplicationController
  
  def index
    @posts = Post.all
    @latest = Post.last
  end

  def show
   # @post = Post.find(params[:id])
    @post = Post.friendly.find(params[:id])    
  end
end
