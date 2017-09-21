class PostsController < ApplicationController
  def show
    @post = Post.find_by_id(params[:id])
    @user = User.find_by_id(@post.user_id)
  end
end
