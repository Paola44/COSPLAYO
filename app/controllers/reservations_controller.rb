class ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations
  end

  def new
  end

  def create
  end
end
