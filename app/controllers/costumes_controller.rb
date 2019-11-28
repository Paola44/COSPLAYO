class CostumesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index
    @costumes = Costume.geocoded

    @markers = @costumes.map do |costume|
      {
        lat: costume.latitude,
        lng: costume.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { costume: costume }),
        image_url: helpers.asset_url('marker.png')
      }
    end
  end

  def show
    @costume = Costume.find(params[:id])
    @reservation = Reservation.new

    @marker = [{
      lat: @costume.latitude,
      lng: @costume.longitude,
      infoWindow: render_to_string(partial: "info_window", locals: { costume: @costume }),
      image_url: helpers.asset_url('marker.png')
    }]
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
    params.require(:costume).permit(:name, :description, :address, :price_per_day, :image)
  end
end
