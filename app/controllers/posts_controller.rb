class PostsController < ApplicationController
  
  def new
    
  end
  
  def create
    @post = Post.new(post_params)
  end

  private
  
  def post_params
    params.reqire(:post).permit(:text, :image)
  end
end
