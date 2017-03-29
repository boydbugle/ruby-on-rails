class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
    # @commentscomment = @comment.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end
  
  # def commentable
  #   @comment = Comment.find(params[:id])
  #   @commentscomment = @comment.comments.new(comment_params) 
  #   if @commentscomment.save
  #     redirect_to @comment
  #   else
  #     flash[:alert] = "failed to save"
  #     render :show
  #   end
  # end

  def show
    @comment = Comment.find(params[:id])
    @commentable = @comment
    @comments = @commentable.comments  
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
  def comment_params
    params.require(:comment).permit(:author,:opinion)
  end
end
