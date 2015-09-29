class PostsController < ApplicationController

  def new
    if logged_in? # only allows logged in users to create a post
      render 'new'
    else
      redirect_to root_path
    end
  end

  def create

    @post = Post.new(post_params)

    @post.user_id = current_user.id

    if @post.save
      redirect_to @post
    else
      render 'new'
    end

  end


  def show
    @post = Post.find(params[:id])
    @author = User.find(@post.user_id)
  end


  private
  def post_params
    params.require(:post).permit(:title, :text)
  end

end
