require 'rails_helper'

describe Station do

  context ".find_by_zipcode" do
    it "returns 10 stations sorted by distance" do
      token = ENV["NREL_API_KEY"]
      stubbed_response

      stations = Station.find_by_zipcode(token,)

    end

  end

end
