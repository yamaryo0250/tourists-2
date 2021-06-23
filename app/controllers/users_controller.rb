class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @tourings = @user.tourings

    if @user.user_icon.file != nil
      @user_icon = @user.user_icon.url
    else
      @user_icon = 'rider.png'
    end
  end

  def edit
    @user = User.find(params[:id])
  end
end
