class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
<<<<<<< HEAD
=======

  def show
    @user = current_user
    @bookings = Booking.all
  end
>>>>>>> f756c6b91b9103dda41fdb351bedf1e799a48a37
end

