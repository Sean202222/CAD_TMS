class PagesController < ApplicationController
  def home
    response = HTTParty.get("https://api.publicapis.org/categories")
    @response = JSON.parse(response.body)
    @categories = @response["categories"]
  end
end
