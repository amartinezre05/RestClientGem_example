class PetsController < ApplicationController
  require "rest-client"

  def get_dogs
    url = "http://shibe.online/api/shibes?count=10"
    response = RestClient.get(url)
    render json: response
  end
end
