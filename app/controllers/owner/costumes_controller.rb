class Owner::CostumesController < ApplicationController
  def index
    @costumes = current_user.costumes
  end
end
