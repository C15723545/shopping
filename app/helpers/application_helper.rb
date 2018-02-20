module ApplicationHelper
	def logged_in?
		if session[:customer_id].nil?
			return
		else
			@current_user = Customer.find_by_id(session[:customer_id])
		end
	end

	def euro(amount)
		number_to_currency(amount, :unit => '€')
	end

end
