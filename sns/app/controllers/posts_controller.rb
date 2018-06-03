class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_ownership, only: [:edit, :update, :destroy]
  
  
  def index
    @posts = Post.all.order('created_at desc')
    @posts_count = current_user.posts.length
  end
  
  def new
  end
  
  def folw
<<<<<<< HEAD
    @fposts = Post.where(user_id: current_user.followings.ids).order('created_at desc')
  end
  
  def mypage
    @mposts = Post.where(user_id: current_user.id).order('created_at desc')
    @mposts_count = current_user.posts.length
=======
    @fposts = Post.where(user_id: current_user.followings.ids)
  end
  
  def mypage
    @mposts = Post.where(user_id: current_user.id)
>>>>>>> af4017824b688259477c27d0c7e3d0a0d4b38209
  end
  
  def create
    new_post = Post.new(user_id: current_user.id,
                        content: params[:content],
                        image: params[:image])
    if new_post.save
      redirect_to root_path
    else
      redirect_to new_post_path
    end
  end
  
  def edit
  end
  
  def update
    @post.content = params[:content]
    @post.image   = params[:image] if params[:image].present?

    if @post.save
        redirect_to root_path
    else
        render :edit
    end
  end
  
  def destroy
    @post.destroy
<<<<<<< HEAD
    redirect_back(fallback_location: root_path)
=======
    redirect_to root_path
>>>>>>> af4017824b688259477c27d0c7e3d0a0d4b38209
  end
  
  private
  
  def check_ownership
    @post = Post.find_by(id: params[:id])
    redirect_to root_path if @post.user_id != current_user.id  
  end
end
