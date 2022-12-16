class PagesController < ApplicationController
  def home # Taken 'categories' from the API
    # response = HTTParty.get("https://api.publicapis.org/categories")
    response = HTTParty.get("https://www.gov.uk/bank-holidays.json")
    @response = JSON.parse(response.body)
    @categories = @response["england-and-wales"]

    @cat_facts = JSON.parse(HTTParty.get("https://cataas.com/api/tags").body)
  end
end
