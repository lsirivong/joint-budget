class LineItem < ActiveRecord::Base
	belongs_to :budget
	belongs_to :member

	def purchaser_name
		unless member.nil?
			member.name
		else
			''
		end
	end
end
