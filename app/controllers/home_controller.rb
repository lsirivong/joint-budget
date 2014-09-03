class HomeController < ApplicationController
	def index
		unless member_signed_in?
			redirect_to new_member_session_path
		end

		@budget = current_member.latest_budget
		@line_item = LineItem.new;
	end
end
