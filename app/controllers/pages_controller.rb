class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def show
    @user = current_user
    @user_bonzais = Bonzai.where(user_id: @user.id)
    @user_bookings = Booking.where(user_id: @user.id)
    @bookings = Booking.all
    @requests = @bookings.select do |booking|
      booking.bonzai.user == @user
    end
  end
end
