class PhotosController < ApplicationController
  before_action :authenticate_user!

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    current_user.photos.create(photo_params)
    redirect_to root_path
  end

  private

  def place_params
    params.require(:photo).permit(:caption)
  end

end
