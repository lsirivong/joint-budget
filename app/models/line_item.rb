class LineItem < ActiveRecord::Base
	belongs_to :budget
	belongs_to :member
	validates :description, presence: true
	validates :amount, presence: true

	def purchaser_name
		unless member.nil?
			member.name
		else
			''
		end
	end
end
