class CartsController < ApplicationController
  def show
    @cart_contents = session[:cart] || {} # Retrieve cart contents from session
  end
end
