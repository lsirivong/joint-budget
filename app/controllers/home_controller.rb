class HomeController < ApplicationController
	def index
		if member_signed_in?
			@balance = 0
			current_member.budgets.each do |budget|
				@balance += budget.balance_by(current_member)
			end

			page = params[:page] || 1

			@line_items = LineItem.page(page)

			default_budget_id = current_member.budgets.any? ? current_member.budgets.first.id : nil
			@line_item = LineItem.new(purchased_at: Date.today, member_id: current_member.id, budget_id: default_budget_id);
		else
			redirect_to new_member_session_path
		end
	end
end
