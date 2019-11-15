class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :edit, :update, :destroy]
  def index
    @plants = Plant.all
  end

  def show
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.owner = current_user if user_signed_in?
    if @plant.save
      redirect_to plants_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @plant.update
      redirect_to plant_path(@plant)
    else
      render :edit
    end
  end

  def destroy
    @plant.destroy
    redirect_to plants_path
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :description, :location, :price_per_day, :picture)
  end

  def set_plant
    @plant = Plant.find(params[:id])
  end
end
