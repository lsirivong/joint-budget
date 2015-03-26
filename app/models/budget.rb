class Budget < ActiveRecord::Base
	has_many :line_items
	has_many :memberships
	accepts_nested_attributes_for :memberships
	has_many :members, through: :memberships

	def first_initial
		name[0]
	end

	def total
		total = 0
		line_items.each do |line_item|
			total += line_item.amount
		end

		total
	end

	def total_by(member)
		total = 0
		line_items.purchased_by(member).each do |line_item|
			total += line_item.amount
		end

		total
	end

	def balance_by(member)
		t = total

		membership = Membership.find_by member_id: member.id, budget_id: id

		balance = 0

		if membership
			percent = membership.allocation

			balance = (t * percent) - total_by(member)
		end

		balance
	end

	def balances
		vals = members.map do |member|
			[member.name, balance_by(member)]
		end
		Hash[vals]
	end
end
