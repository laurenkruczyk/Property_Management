class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def new
    @building = Building.new
  end

  def create
    @building = Building.new(building_params)
    if @building.save
      redirect_to @building, notice: 'Successfully recorded building'
    else
      render 'new'
    end
  end

  def show
    @building = Building.find(params[:id])
  end

  private
  
  def building_params
    params.require(:building).permit(:id, :address, :city, :state, :postal_code, :description, :owner)
  end
end
