class FlatsController < ApplicationController
  def index
    @flats = Flat.where.not(latitude: nil, longitude: nil)
    @address = request.location
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window: render_to_string(partial: "info_window", locals: { flat: flat })
      }
    end
  end

  def new
    @flat = Flat.new
  end
end
