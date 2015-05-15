class LineItem < ActiveRecord::Base
	belongs_to :budget
	belongs_to :member
	validates :description, presence: true
	validates :amount, presence: true

	default_scope { order('purchased_at DESC') }
	scope :purchased_by, ->(member) { where member: member }

	def member
		super || NullMember.new
	end

	def purchaser_name
		member.name
	end
end
