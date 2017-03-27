class CommentsController < ApplicationController
  def new
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.comments.new
  end

  def create
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to photo_path(@photo)
    else 
      render :new
    end
  end

  def edit
     @photo = Photo.find(params[:photo_id])
     @comment = Comment.find(params[:id])
  end

  def update
     @photo = Photo.find(params[:photo_id])
     @comment = Comment.find(params[:id])
     if @comment.update(comment_params)
       redirect_to photo_path(@photo)
     else
       render :edit
      end
  end

  def destroy
    @photo = Photo.find(params[:photo_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to photo_path(@photo)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment)
  end
end
