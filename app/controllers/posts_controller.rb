class PostsController < ApplicationController
  def new
    
  end
  def create
    @post = Post.new(post_params)
    #post_paramsは引数
  end

  private
  def post_params
  	params.require(:post).permit(:text, :image)
  end
end
