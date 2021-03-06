class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
    authorize User
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path, :notice => "User deleted"
  end
  def downgrade
    user = User.find(params[:id])
    user.role = :standard
    user.save
    redirect_to user_path(user)
  end
end
