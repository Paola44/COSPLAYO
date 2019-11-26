class Owner::ReservationsController < ApplicationController
  def index
    @reservations = current_user.owner_reservations
    # @accepted_reservations =
  end

  def accept
    @reservation = Reservation.find(params[:id])
    @reservation.status = "approved"

    @reservation.save
    redirect_to owner_reservations_path
  end

  def decline
    @reservation = Reservation.find(params[:id])
    @reservation.status = "declined"

    @reservation.save
    redirect_to owner_reservations_path
  end
end
