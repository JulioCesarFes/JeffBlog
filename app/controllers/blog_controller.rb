class BlogController < ApplicationController

  def index
    @posts = Post.all
  end

  def post
    @post = Post.find(params[:slug])
  end
end
