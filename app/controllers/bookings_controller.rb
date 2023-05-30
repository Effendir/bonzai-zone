class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.status = 'pending'
    @bonzai = Bonzai.find(params[:bonzai_id])
    @booking.bonzai = @bonzai
    if @booking.save
      redirect_to bonzais_path(@bonzai)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :bonzai_id, :start_date, :end_date, :status, :total_price)
  end
end
