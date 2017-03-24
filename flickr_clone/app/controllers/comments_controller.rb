class CommentsController < ApplicationController
  def new
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.comments.new
  end

  def create
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.comments.new(comment_params)
    if @comment..user_id(current_user).save
      redirect_to photo_path(@photo)
    else 
      render :new
    end
  end

  def edit
  end

  private
  def comment_params
    params.require(:comment).permit(:comment)
  end
end
