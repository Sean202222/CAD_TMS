class PagesController < ApplicationController
  def home # Taken 'categories' from the API
    # response = HTTParty.get("https://api.publicapis.org/categories")
    response = HTTParty.get("https://www.gov.uk/bank-holidays.json")
    @response = JSON.parse(response.body)
    @categories = @response["england-and-wales"]

    @cat_facts = JSON.parse(HTTParty.get("https://cataas.com/api/tags").body)

    # Set Cookies
  def set_cookie
    cookies.signed[:user_name] = "sean"
    # Set Expiry Dates
    cookies.signed[:user_number] = { value: "cookies YUM", expires: Time.now + 3600}
  end
  
    # Show Cookies
  def show_cookie
    @user_name = cookies[:user_name]
    @user_number = cookies[:user_number]
  end

  def delete_cookie
    # Delete Cookies
    cookies.delete :user_name
    cookies.delete :user_number
  end

  end
end
