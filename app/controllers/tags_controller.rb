class TagsController < ApplicationController

  def index
    @tags = Tag.all

  end

  def show
    @post = Post.find(params[:id])
    @tag = Tag.new
    @tags = @post.tags.all
  end

  def new
    @post = Post.find(params[:id])
    @tag = Tag.new
  end

  def edit
  end

  def create
    @post = Post.find(params[:id])
    @tag = @post.tags.new(tag_params)
    if @tag.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def update
    if @tag.update(tag_params)
      redirect_to @tag, notice: 'Tag was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @tag.destroy
    redirect_to tags_url, notice: 'Tag was successfully destroyed.'
  end

  private
    def tag_params
      params.require(:tag).permit(:name)
    end
end
