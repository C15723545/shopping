class SessionsController < ApplicationController
  def new
  end

  def create
	customer = Customer.find_by_email(params[:email])
	if customer && customer.authenticate(params[:password])
		session[:customer_id] = customer.id
		redirect_to customer
	else
		flash.now[:error] = "Email and password do not match"
		render 'new'
	end
  end

  def destroy
	if logged_in?
		session[:customer_id] = nil
	else
		flash[:notice] = "You need to login first"
	end
	redirect_to login_path
  end
end
