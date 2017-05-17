require 'rails_helper'

describe StationService do
  context ".find_by_zipcode" do
    it "returns Electric vehicle stations for zipcode 80203", vcr: true do
      zipcode = "80203"
      token = ENV["NREL_API_KEY"]
      stations = StationService.find_by_zipcode(zipcode, token)
      station = stations[:fuel_stations].first

      expect(stations).to be_a(Hash)
      expect(stations[:fuel_stations]). to be_an(Array)
      expect(station[:station_name]).to be_a(String)
      expect(station[:station_name]).to eq("UDR")
      expect(station[:street_address]).to be_a(String)
      expect(station[:street_address]).to eq("800 Acoma St")
      expect(station[:fuel_type_code]).to be_a(String)
      expect(station[:fuel_type_code]).to eq("ELEC")
      expect(station[:distance]).to be_a(Float)
      expect(station[:distance]).to eq(0.31422)
      expect(station[:access_days_time]).to be_a(String)
      expect(station[:access_days_time]).to eq("24 hours daily")
    end

  end

end
