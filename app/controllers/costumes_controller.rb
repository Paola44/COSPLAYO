class CostumesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :home]

  def index
    @costumes = Costume.all
  end

  def show
    @costume = Costume.find(params[:id])
    @reservation = Reservation.new
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.user = current_user
    if @costume.save!
      redirect_to costume_path(@costume)

    else
      render 'new'
    end
  end

  def costume_params
    params.require(:costume).permit(:name, :description, :address, :price_per_day, :image )
  end

end
