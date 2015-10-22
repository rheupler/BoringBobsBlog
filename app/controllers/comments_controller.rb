class CommentsController < ApplicationController

  def show
    @post = Post.find(params[:post_id])
    @comment = Comment.new
    @comments = @post.comments.all
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user_id=current_user.id if current_user
    if @comment.save
      flash[:notice] = "Comment added!"
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:sentence, :image)
  end
end
