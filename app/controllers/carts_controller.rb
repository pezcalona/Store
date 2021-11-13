class CartsController < ApplicationController

  include PagesHelper
  before_action :set_cart_from_cookie

  def show
  end

  def add_product
    #recuperar el id de cart
    #recuperar el id del product
    product_id = params[:id_product]
    #guardar el registro en CartProduct
    cart_product = CartProduct.new
    cart_product.cart = @cart
    cart_product.product_id = product_id
    cart_product.quantity = 1
    cart_product.save

    flash[:cart_product_created] = "Product Added"
    redirect_to root_path
  
  
  end
end
