class CommentsController < ApplicationController


  def create
    @comment = Comment.create(comment_params)
    @post = Post.find_by_id(params[:id])
    @post.comments << @comment
    @user = User.find_by_id(session[:user_id])
    @user.comments << @comments
    redirect_to post_path(@post)
  end


  private
  def comment_params
    params.require(:comment).permit(:message)
  end

end
