require 'rails_helper'

describe Station do

  context ".find_by_zipcode" do
    it "returns 10 stations sorted by distance", vcr: true do
      zipcode = "80302"
      token = ENV["NREL_API_KEY"]

      stations = Station.find_by_zipcode(zipcode, token)
      expect(stations.count).to eq 10
    end

  end

end
