class Budget < ActiveRecord::Base
	has_many :line_items
	has_and_belongs_to_many :members

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
end
