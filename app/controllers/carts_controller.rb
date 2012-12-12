class CartsController < ApplicationController
  def new
      @cart = Cart.new
    end

    def create
      @cart = Cart.new(params[:cart])
      if @cart.save
        redirect_to root_url, :notice => "Signed up!"
      else
        render "new"
      end
    end
end
