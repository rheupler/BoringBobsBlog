class PostsController < ApplicationController
  def index
   @posts = Post.all
   @post = Post.new
   @tags = Tag.all
  end

 def new
   @post = Post.new
 end

 def destroy
   @post = Post.find(params[:id])
   @post.destroy
   redirect_to posts_path
 end

 def show
   @post = Post.find(params[:id])

 end

 def create
   @post = Post.new(post_params)
   if @post.save
     flash[:notice] = "Post added!"
     redirect_to posts_path
   else
     render :index
   end
 end

 def edit
   @post = Post.find(params[:id])
 end

 def update
   @post = Post.find(params[:id])
   if @post.update(post_params)
     redirect_to post_path
   else
     render :edit
   end
 end


 private
 def post_params
   params.require(:post).permit(:title, :content)
 end
end
