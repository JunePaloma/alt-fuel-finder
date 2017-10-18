class SearchController < ApplicationController

  def index
    stations_data= StationService.new.find_by_zip_code(params[:zip])
    @stations = StationMaker.new(stations_data).make_stations[:fuel_stations]
  end

end
