class StationService
  def initialize
    @conn = Faraday.new('https://developer.nrel.gov/docs/transportation/alt-fuel-stations-v1')
  end

  def self.find_by_zipcode(zipcode, token)
    
    conn.get '/nearest.json', {location: zipcode, }
  end

  private
    attr_reader :conn
end
