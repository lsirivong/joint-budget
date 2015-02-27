class HomeController < ApplicationController
	def index
		if member_signed_in?
			@balance = 0
			current_member.budgets.each do |budget|
				@balance += budget.balance_by current_member
			end

			@line_items = LineItem.page current_page

			@line_item = LineItem.new purchased_at: Date.today, member: current_member, budget: current_member.default_budget
		else
			redirect_to new_member_session_path
		end
	end

	private

	def current_page
		params[:page]
	end
end
