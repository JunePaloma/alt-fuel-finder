class SearchController < ApplicationController

  def index
    stations_data= StationService.find_by_zip_code(params[:zip])
    @stations = StationMaker.new(stations_data).make_stations
  end

end
