class LikesController < ApplicationController
  def create
    @like = current_user.likes.create(touring_id: params[:touring_id])
    redirect_to root_path
  end

  def destroy
    @like = Like.find_by(touring_id: params[:touring_id], user_id: current_user.id)
    @like.destroy
    redirect_to root_path
  end
end
