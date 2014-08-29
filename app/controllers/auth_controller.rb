class AuthController < ApplicationController
	def logout
		if member_signed_in?
			sign_out current_member
		end
		redirect_to root_path
	end
end
