class CommentsController < ApplicationController
  before_action :user_match?, only: [:destroy]
  before_action :require_login, expect: [:index, :show]

  def index
  end

  def show
  end

  def create
    @comment = Comment.create(comment_params)
    @post = Post.find_by_id(params[:id])
    @post.comments << @comment
    @user = User.find_by_id(session[:user_id])
    @user.comments << @comment
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find_by_id(@comment.post_id)
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:message)
  end

  def user_match?
    @comment = Comment.find_by_id(params[:id])
    if session[:user_id] != @comment.user_id
      redirect_to root_path
    end
  end

end
