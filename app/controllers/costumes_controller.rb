class CostumesController < ApplicationController
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
