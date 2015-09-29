class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    render 'new'
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)

    @comment.user_id = current_user.id

    if @comment.save
      redirect_to post_path(@post)
    else
      redirect_to root_path
    end

  end

  private
  def comment_params
    params.require(:comment).permit(:text)
  end

end
