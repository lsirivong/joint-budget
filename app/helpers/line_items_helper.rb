module LineItemsHelper
	def get_member_select_options(selected = nil)
		members = Member.all.where('"admin" =?', false)
		members.map { |m| [m.name, m.id] }
	end

	def get_budget_select_options
		budgets = Budget.all
		budgets.map { |m| [m.name, m.id] }
	end

	def get_purchaser_name(line_item)
		unless line_item.member.nil?
			return line_item.member.name
		else
			return ''
		end
	end

	def get_budget_name(line_item)
		unless line_item.budget.nil?
			return line_item.budget.name
		else
			return ''
		end
	end
end
