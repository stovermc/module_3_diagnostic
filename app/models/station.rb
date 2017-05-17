class Station
  def initialize(attrs={})
    @attrs = attrs
    byebug
  end

  def self.find_by_zipcode(zipcode, token)
    raw_stations = StationService.find_by_zipcode(zipcode, token)
    raw_stations[:fuel_stations].map do |raw_station|
      Station.new(raw_station)
    end
  end
end
