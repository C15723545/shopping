class ShopController < ApplicationController
  before_action :current_cart

  def index
	   @products = Product.order("title asc").all
  end
  
  def search
	@products = Product.search params[:query]
	unless @products.empty?
		render 'index'
	else
		flash[:notice] = 'No record matches that search'
		redirect_to root_path
	end
  end
  
end
