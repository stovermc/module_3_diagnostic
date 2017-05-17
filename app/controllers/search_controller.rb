class SearchController < ApplicationController
  def index
    @stations = Station.find_by_zipcode(params[:q], ENV['NREL_API_KEY'])
  end
end
