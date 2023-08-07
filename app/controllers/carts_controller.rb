class CartsController < ApplicationController

  def update_quantity
    product_id = params[:product_id]
    new_quantity = params[:quantity].to_i
    session[:cart][product_id] = new_quantity if session[:cart][product_id]

    redirect_to cart_path
  end

  def show
    @cart_contents = session[:cart] || {} # Retrieve cart contents from session
  end
end
