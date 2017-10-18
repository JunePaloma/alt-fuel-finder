class StationService
  def initialize
    @conn = Faraday.new(someurl) do |faraday|
      faraday.adapter Faraday.default_adapter
  end

def find_by_zip_code
  response = conn.get(" #{ENV["NREL_API_KEY"]}")
end

end
