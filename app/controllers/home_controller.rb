class HomeController < ApplicationController
	def index
		unless member_signed_in?
			redirect_to new_member_session_path
		end

		@balance = current_member.total_balance

		@line_items = LineItem.page current_page

		@line_item = LineItem.new purchased_at: Date.today, member: current_member, budget: current_member.default_budget
	end

	private

	def current_page
		params[:page]
	end
end
