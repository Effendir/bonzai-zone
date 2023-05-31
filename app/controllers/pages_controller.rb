class PagesController < ApplicationController

  def show
    @user = current_user
    @bookings = Booking.all
  end
end
