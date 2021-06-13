class TouringsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :touring_find, except: [:index, :new, :create]
  before_action :redirect, only: [:edit, :update, :destroy]
  
  def index
    @tourings = Touring.order('created_at DESC')
  end

  def new
    @touring = Touring.new
    @touring.users << current_user
  end

  def create
    @touring = Touring.create(touring_params)
    if @touring.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def touring_params
    params.require(:touring).permit(:plan, :displacement_id, :text, :style_id, :term_id, :area_id, :day, user_ids: []).merge(user_id: current_user.id)
  end

  def touring_find
    @touring = Touring.find(params[:id])
  end

  # def redirect
  #   redirect_to action: :index unless current_user.id == @touring.user_id
  # end


end
