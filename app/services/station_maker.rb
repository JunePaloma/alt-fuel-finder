class StationMaker
  def initialize(station_data)
    @station_data = station_data
  end

  def make_stations
    @station_data.map do |station|
      Station.new(station)
    end
  end
end
