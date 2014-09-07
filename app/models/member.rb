class Member < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable,
		:recoverable, :rememberable, :trackable, :validatable
	has_many :line_items
	has_many :memberships
	has_many :budgets, through: :memberships

	def first_initial
		name[0]
	end

	def latest_budget
		budgets.order('created_at DESC').first
	end
end
