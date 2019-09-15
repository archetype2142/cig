class AuthController < ApplicationController
	def index
		if user_signed_in?
			redirect_to "https://cigarettes-collect.herokuapp.com?userId=#{current_user.id}"
		end
	end
end
