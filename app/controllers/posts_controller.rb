class PostsController < ApplicationController
  before_action :require_login, except: [:show, :new]
  before_action :user_match?, only: [:edit, :update, :destroy]

  def show
    @post = Post.find_by_id(params[:id])
    @user = User.find_by_id(@post.user_id)
    @comments = @post.comments
    @new_comment = Comment.new
  end

  def new
    if session[:user_id] == nil
      flash[:error] = "You must be logged in to leave a post"
      redirect_to city_path(session[:last_city_id])
    else
      @post = Post.new
    end
  end

  def create
    @post = Post.create(post_params)
    if @post.valid?
      @user = User.find_by_id(session[:user_id])
      @user.posts << @post
      @city = City.find_by_id(session[:last_city_id])
      @city.posts << @post
      redirect_to city_path(@city)
    else
      flash[:error] = "#{@post.errors.full_messages.join(", ")}"
      redirect_to new_post_path
    end
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
