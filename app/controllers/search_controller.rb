class SearchController < ApplicationController

  def index
    stations_data = StationService.new.find_by_zip_code(params[:q])[:fuel_stations]
    @stations = StationMaker.new(stations_data).make_stations


    #need a presenter or some other means of looping over the stations hash to prepare stations for the view
  end

end
