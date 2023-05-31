class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def show
    @user = current_user
    @bookings = Booking.all
  end
end
