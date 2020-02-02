class BlogsController < ApplicationController
  before_action :authenticate_user!

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = current_user.blogs.create(blog_params)
    redirect_to blogs_path
  end

private

  def blog_params
    params.require(:blog).permit(:title, :author, :subtitle, :content)
  end
end