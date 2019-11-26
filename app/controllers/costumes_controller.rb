class CostumesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index]

  def index
    @costumes = Costume.all
  end

  def show
    @costume = Costume.find(params[:id])
  end

  def new
    @costume = Costume.new
  end

  def create
  end
end
