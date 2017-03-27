class PhotosController < ApplicationController
before_action :authenticate_user!, only: [:new, :create, :edit, :update, :delete]

  def index
    @photos = Photo.all
  end

  def show
   @photo = Photo.find(params[:id])
  end

  def new
    @photo = current_user.photos.build
  end

  def create
    @photo = current_user.photos.build(photo_params)
    if @photo.save
      redirect_to photos_path
    else
      render :new
    end
  end

  def edit
     @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      redirect_to photos_path
    else
      render :edit
    end
  end

   def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path
  end

  private
  def photo_params
    params.require(:photo).permit(:photo,:tag,:image)
  end
end
