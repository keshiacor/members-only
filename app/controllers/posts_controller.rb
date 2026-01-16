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
     @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to posts_path, notice: "Your post was successfully created!"
    else
      render :new, status: :unprocessable_entity, notice: "There was an issue creating your post, please try again."
    end
  end

   private
    def require_login
        unless current_user.logged_in?
          flash[:error] = "You must first be logged in to access this page."
          redirect_to new_user_session_path
        end
    end

    def post_params
      params.require(:post).permit(:title, :description)
    end
end
