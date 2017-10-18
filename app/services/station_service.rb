class StationService
  def initialize
    @conn = Faraday.new("https://developer.nrel.gov/") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def find_by_zip_code(zip_code)
    response = @conn.get("api/alt-fuel-stations/v1/nearest.json?type=ELEC,LPG&limit=10& &location=#{zip_code}&radius=6&#{ENV["NREL_API_KEY"]}")
    JSON.parse(response.body, symbolize_names: true)
  end

end
