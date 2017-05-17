class Station
  def initialize(attrs={})

    @attrs = attrs
  end

  def find_by_zipcode
    StationService.find_by_zipcode
  end
end
