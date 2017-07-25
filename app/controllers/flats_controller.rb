class FlatsController < ApplicationController
  def show
    @flat = Flat.find(params[:id])
    @flat_coordinates = { lat: @flat.latitude, lng: @flat.longitude }
  end
end
