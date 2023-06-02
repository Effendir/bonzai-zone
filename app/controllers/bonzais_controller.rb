class BonzaisController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_bonzai, only: [:show, :edit, :update, :destroy]

  def index
    @bonzais = Bonzai.all
  end

  def show
    @booking = Booking.new
    @bonzai =  Bonzai.find(params[:id])
  end

  def new
    @bonzai = Bonzai.new
  end

  def create
    @bonzai = Bonzai.new(bonzai_params)
    @bonzai.user = current_user
    if @bonzai.save
      redirect_to profile_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @bonzai.update(bonzai_params)
      redirect_to bonzai_path(@bonzai)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bonzai.destroy
    redirect_to profile_path, status: :see_other
  end

  private

  def set_bonzai
    @bonzai = Bonzai.find(params[:id])
  end

  def bonzai_params
    #params.require(:bonzai).permit(:name, :species, :photo_url, :description, :address, :price_per_day)
    params.require(:bonzai).permit(:name, :species, :photo, :description, :address, :price_per_day)
  end
end
