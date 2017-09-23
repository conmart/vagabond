class PostsController < ApplicationController
  before_action :require_login, except: [:show]
  before_action :user_match?, only: [:edit, :update, :destroy]

  def show
    @post = Post.find_by_id(params[:id])
    @user = User.find_by_id(@post.user_id)
    @comments = @post.comments
    @new_comment = Comment.new
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

  def edit
    @user = User.find_by_id(session[:user_id])
  end

  def update
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post.destroy
    redirect_to user_path(session[:user_id])
  end

  private
  def post_params
    params.require(:post).permit(:title, :message)
  end

  def user_match?
    @post = Post.find_by_id(params[:id])
    if session[:user_id] != @post.user_id
      redirect_to root_path
    end
  end
end
