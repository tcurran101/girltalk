class BlogsController < ApplicationController
  before_action :authenticate_user!

def new
  @blog = Blog.new
end

def show
  @blog = Blog.find(params[:id])
end

private

  def blog_params
    params.require(:blog).permit(:title, :author, :subtitle, :content)
  end
end