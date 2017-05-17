class StationService
  def initialize
    @conn = Faraday.new('https://developer.nrel.gov')
  end

  def self.find_by_zipcode(zipcode, token)
    service = StationService.new
    body = service.find_by_zipcode(zipcode, token)
    byebug
  end

  def find_by_zipcode(zipcode, token)
    response = @conn.get '/api/alt-fuel-stations/v1/nearest.json',
                {location: zipcode, fuel_type: "ELEC", api_key: token}
    JSON.parse(response.body, symbolize_names: true)
  end

  private
    attr_reader :conn
end
