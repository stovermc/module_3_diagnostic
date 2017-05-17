require 'rails_helper'

describe StationService do
  context "returns raw json for NREL api" do
    it ".find_by_zipcode", vcr: true do
      token = ENV["NREL_API_KEY"]
      stations = Station.find_by_zipcode(token)
      station = 

      expect(stations).to be_a(Hash)
      expect(stations[:fuel_stations]). to be_an(Array)
      expect(stations[:fuel_stations].first[:station_name]).to be_a(String)
      expect(stations[:fuel_stations].first[:station_name]).to eq("City of Boulder - North Boulder Recreation Center")
      expect(stations[:fuel_stations].first[:distance]).to eq()





    end

  end

end
