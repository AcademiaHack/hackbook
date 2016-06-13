class PostsController < ApplicationController
  before_action :authenticate_user

  def index
    @posts = Post.all.order('created_at DESC')
    @post = Post.new
    respond_to do |format|
      format.html
      format.json { render json: @posts}
    end
  end

  def show
    @testing = session[:testing]
  end

  def edit
    @post = Post.find params[:id]
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    @post.user = @current_user
    if @post.save
      message = {notice: "Post creado :("}
    else
      message = {alert: "Error al crear el post :)"}
    end
    redirect_to posts_path, message
  end

  def update
    @post = Post.find params[:id]
    @post.update(post_params)
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit([:title, :content, :type_of, :user_id])
  end
end
