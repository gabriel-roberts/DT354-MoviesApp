module ApplicationHelper
	def signed_in?
		if session[:user_id].nil?
			return
		  else
			@current_user = User.find_by_id(session[:user_id])
		end
	end

	def euro(ammount)#method with a formal parameter so unlike jave no type in front of the name//
		number_to_currency(ammount, :unit => "&euro;")	
	end
end
