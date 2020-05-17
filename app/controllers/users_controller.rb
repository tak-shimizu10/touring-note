class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @posts = current_user.posts
    @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end
end
