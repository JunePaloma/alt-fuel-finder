class Station

  attr_reader :name, :fuel_type, :distance, :access_times

  def initialize(data)
    @name = data[:station_name]
    @fuel_type = data[:fuel_type_code]
    @distance = data[:distance]
    @access_times = data[:access_days_time]
  end


end
