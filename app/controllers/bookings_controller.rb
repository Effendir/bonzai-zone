class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.status = 'En attente'
    @bonzai = Bonzai.find(params[:bonzai_id])
    @booking.bonzai = @bonzai
    if @booking.save
      redirect_to profile_path
    else
      render 'bonzais/show', status: :unprocessable_entity
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "Accepté"
    @booking.save
    redirect_to profile_path, status: :see_other
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "Refusé"
    @booking.save
    redirect_to profile_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :bonzai_id, :start_date, :end_date, :status, :total_price)
  end
end
