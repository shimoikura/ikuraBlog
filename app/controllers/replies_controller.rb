class RepliesController < ApplicationController
  def create
   @blog = Blog.find(params[:blog_id])
   @reply = @blog.replies.create(reply_params)

   redirect_to blogs_path(@blog)
 end

 private
   def reply_params
     params.require(:reply).permit(:comment)
   end
end
