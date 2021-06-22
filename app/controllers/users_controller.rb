class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @tourings = @user.tourings
  end

  def edit
    @user = User.find(params[:id])
  end
end
