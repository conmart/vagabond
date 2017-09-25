class UsersController < ApplicationController
  before_action :require_login, only: [:show, :edit, :update]


  def index
    @cities = City.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      login(@user)
      redirect_to @user
    else
      flash[:error] = "Error creating user, please make sure all fields are filled in."
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find_by_id(params[:id])
    @posts = @user.posts
    @cities = City.all
  end

  def edit
    @user = User.find_by_id(session[:user_id])
  end

  def update
    @user = User.find_by_id(session[:user_id])
    @user.update(user_params)
    @user.save(validate: false)
    redirect_to user_path(@user.id)
  end

  # private

  def user_params
    params.require(:user).permit(:name, :current_city, :image, :email, :password)
  end


end
