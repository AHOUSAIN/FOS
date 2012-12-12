class SessionsController < ApplicationController
  def new
    end

    def create
      cart = Cart.find_by_email(params[:email])
      if cart && cart.authenticate(params[:password])
        session[:cart_id] = cart.id
        redirect_to root_url, :notice => "Logged in!"
      else
        flash.now.alert = "Invalid email or password"
        render "new"
      end

    def destroy
      session[:cart_id] = nil
      redirect_to root_url, :notice => "Logged out!"
    end
    
  end

end
