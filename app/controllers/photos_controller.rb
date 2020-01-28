class PhotosController < ApplicationController
  before_action :authenticate_user!

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end


  def create
   @photo = current_user.photos.create(photo_params)
    redirect_to home_path
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :image)
  end

end
