class HomeController < ApplicationController
	def index
		if member_signed_in?
			@balance = 0
			current_member.budgets.each do |budget|
				@balance += budget.balance_by(current_member)
			end

			@line_items = LineItem.all.order('purchased_at DESC')
			@line_item = LineItem.new(purchased_at: Date.today, member_id: current_member.id, budget_id: current_member.budgets.first.id);
		else
			redirect_to new_member_session_path
		end
	end
end
