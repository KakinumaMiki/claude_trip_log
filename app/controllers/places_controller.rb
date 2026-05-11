class PlacesController < ApplicationController
  before_action :set_prefecture

  def show
    @place = @prefecture.places.find(params[:id])
  end

  def new
    @place = @prefecture.places.build
  end

  def create
    @place = @prefecture.places.build(place_params)
    if @place.save
      redirect_to prefecture_path(@prefecture)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_prefecture
    @prefecture = Prefecture.find(params[:prefecture_id])
  end

  def place_params
    params.expect(place: [:name, :address, :memo, :status])
  end
end
