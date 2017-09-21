class PostsController < ApplicationController
  def show
    @post = Post.find_by_id(params[:id])
    @user = User.find_by_id(@post.user_id)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @user = User.find_by_id(session[:user_id])
    @user.posts << @post
    @city = City.find_by_id(session[:last_city_id])
    @city.posts << @post
    redirect_to city_path(@city)
  end

  private
  def post_params
    params.require(:post).permit(:title, :message)
  end
end
