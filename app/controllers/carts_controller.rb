class CartsController < ApplicationController

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
end
