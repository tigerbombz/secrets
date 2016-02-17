class UsersController < ApplicationController

  def index
    @user = User.new

  end

  def show
    @user = User.find(params[:id])
    @secret = Secret.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to '/'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update

  end

  def destroy
    @user = User.find(params[:id])
    session[:user_id] = false
    @user.destroy
    redirect_to '/'
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
