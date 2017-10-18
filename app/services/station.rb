class Station

  def initialize(data)
    @name = data[:name]
    @fuel_type = data[:fuel_type]
    @distance = data[:distance]
    @access_times = data[:access_times]
  end

  attr_reader :name, :fuel_type, :distance, :access_times

end
