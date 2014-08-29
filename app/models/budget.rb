class Budget < ActiveRecord::Base
	has_many :line_items
	has_many :memberships
	has_many :members, through: :memberships

	def total
		total = 0
		line_items.each do |line_item|
			total += line_item.amount
		end

		total
	end

	def total_by(member)
		total = 0;
		line_items_by_member = line_items.find_all_by_member_id(member.id)
		line_items_by_member.each do |line_item|
			total += line_item.amount
		end

		total
	end

	def balance_by(member)
		t = total

		# divide evenly for now
		# num_members = members.count
		# percent = 1.0 / num_members

		# binding.pry
		membership = Membership.where(:member_id => member.id, :budget_id => id).take
		percent = membership.allocation

		(t * percent) - total_by(member)
	end
end
