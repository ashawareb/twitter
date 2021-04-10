# The pages controller contains all of the code for any page inside of /pages
class PagesController < ApplicationController
  # back-end code for pages/index
  def index
  end

  # back-end code for pages/home
  def home
    @posts = Post.all
  end

  # back-end code for pages/profile
  def profile
    if User.find_by_username(params[:id])
      @username = params[:id]
    else
      flash[:danger] = "User not found"
      redirect_to root_path
    end
    @posts = Post.all.where("user_id = ?", User.find_by_username(params[:id]).id)
    @new_post = Post.new
  end

  # back-end code for pages/explore
  def explore
    @posts = Post.all
  end
end
