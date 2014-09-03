class HomeController < ApplicationController
	def index
		unless member_signed_in?
			redirect_to new_member_session_path
		end

		@budget = current_member.budgets.order('created_at DESC').first
	end
end
