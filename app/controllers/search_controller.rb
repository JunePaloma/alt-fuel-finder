class SearchController < ApplicationController

  def index
    @stations  = StationService.find_by_zip_code
  end

end
