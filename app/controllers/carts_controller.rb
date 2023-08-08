class CartsController < ApplicationController

  GST = 5
  State_tax =  {
    "Alberta" => 0,
    "British Columbia" => 7,
    "Manitoba" => 7,
    "New Brunswick" => 10,
    "Newfoundland and Labrador" => 10,
    "Northwest Territories" => 0,
    "Nova Scotia" => 10,
    "Nunavut" => 0,
    "Ontario" => 8,
    "Prince Edward Island" => 10,
    "Quebec" => 9.975,
    "Saskatchewan" => 6,
    "Yukon" => 0
  }




  def update_quantity
    product_id = params[:product_id]
    new_quantity = params[:quantity].to_i

    cart = session[:cart] || {}
    cart[product_id] = new_quantity
    session[:cart] = cart

    redirect_to cart_path, notice: 'Cart updated'
  end

  def remove_item
    product_id = params[:product_id]

    cart = session[:cart] || {}
    cart.delete(product_id)
    session[:cart] = cart

    redirect_to cart_path, notice: 'Item removed from cart'
  end

  def show
    @cart_contents = session[:cart] || {} # Retrieve cart contents from session
  end

  def check_out
    @cart_contents = session[:cart] || {}


  end
end
