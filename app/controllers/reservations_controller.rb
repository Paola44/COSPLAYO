class ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations
  end

  def create
		@costume = Costume.find(params[:costume_id])
		@reservation = Reservation.new(reservation_params)

		@reservation.costume = @costume
		@reservation.user = current_user

		if @reservation.save
			redirect_to reservations_path
		else
			render template: "costumes/show"
		end
  end

  private

  def reservation_params
  	params.require(:reservation).permit(:starting_date, :ending_date)
  end
end
