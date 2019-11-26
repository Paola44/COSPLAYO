class Owner::ReservationsController < ApplicationController
  def index
    @reservations = current_user.owner_reservations
  end

  def accept
  end

  def decline
  end
end
