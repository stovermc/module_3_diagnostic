require 'rails_helper'

describe StationService do
  context ".find_by_zipcode" do
    it "returns Electric vehicle stations for zipcode 80203", vcr: true do
      token = ENV["NREL_API_KEY"]
      stations = Station.find_by_zipcode(token)
      station = [:fuel_stations].first

      expect(stations).to be_a(Hash)
      expect(stations[:fuel_stations]). to be_an(Array)
      expect(station[:station_name]).to be_a(String)
      expect(station[:station_name]).to eq("City of Boulder - North Boulder Recreation Center")
      expect(station[:street_address]).to be_a(String)
      expect(station[:street_address]).to eq("3170 Broadway")
      expect(station[:fuel_type_code]).to be_a(String)
      expect(station[:fuel_type_code]).to eq("ELEC")
      expect(station[:distance]).to be_a(Integer)
      expect(station[:distance]).to eq(3.58925)
      expect(station[:access_days_time]).to be_a(String)
      expect(station[:access_days_time]).to be_a("Center business hours")
    end

  end

end
