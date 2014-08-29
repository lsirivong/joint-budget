class Member < ActiveRecord::Base
	has_many :line_items
	has_many :memberships
	has_many :budgets, through: :memberships
end
