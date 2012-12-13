class CartsController < ApplicationController
  def new
      @cart = Cart.new
    end

    def create
      @cart = Cart.new(params[:cart])
      if @cart.save
        session[:cart_id] = @cart.id
        redirect_to root_url, :notice => "Signed up!"
      else
        render "new"
      end
    end
end
