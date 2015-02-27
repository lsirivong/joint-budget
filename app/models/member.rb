class Member < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable,
		:recoverable, :rememberable, :trackable, :validatable
	has_many :line_items
	has_many :memberships
	has_many :budgets, through: :memberships

	def total_balance
		balance = 0
		budgets.each do |budget|
			balance += budget.balance_by self
		end

		balance
	end

	def first_initial
		name[0]
	end

	def default_budget
		budgets.any? ? budgets.first : nil
	end
end
