class BlogsController < ApplicationController
  def index
     @blogs = Blog.all
  end

  def create
     @blog = Blog.new(blog_params)
     @blog.save
     redirect_to @blog
  end
  def show
    @blog = Blog.find(params[:id])
  end
  private
     def blog_params
       params.require(:blog).permit(:body)
     end



end
