class PostsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]

  def index
    @posts = Post.includes(:user).all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  # to be implemented
  def create
    true
  end

  ## private
  # #def require_login
  # #unless current_user.logged_in?
  # #flash[:error] = "You must first be logged in to access this page."
  # #redirect_to login_path
  ## end
  # #end
end
