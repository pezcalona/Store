class PagesController < ApplicationController
  def home

    if cookies[:cart_id]
      @cart = Cart.find(cookie[:cart_id])
    else

      @cart = Cart.create(total: 0)
      cookies[:cart_id] = @cart.id

    end

  end
end
