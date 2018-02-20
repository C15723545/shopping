class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper

	def authorise
	   unless logged_in?
		     store_location
		       redirect_to login_path, :notice=> "Please sign in to access this page"
		end
	end
   

  private
  
	def store_location
		session[:redirect_to] = request.fullpath
	end
  
	def current_cart
		@cart = Cart.find(session[:cart_id])
		rescue ActiveRecord::RecordNotFound
			@cart = Cart.create
			session[:cart_id] = @cart.id
	end

end