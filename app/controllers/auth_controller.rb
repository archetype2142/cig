class AuthController < ApplicationController
	def index
		if user_signed_in?
			redirect_to "http://cigarettes-collect.herokuapp.com"
		end
	end
end
