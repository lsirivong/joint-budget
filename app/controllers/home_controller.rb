class HomeController < ApplicationController
	def index
		if member_signed_in?
			@budgets = current_member.budgets
			@line_item = LineItem.new;
		else
			redirect_to new_member_session_path
		end
	end
end
