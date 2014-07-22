class Member < ActiveRecord::Base
	has_and_belongs_to_many :budgets
	has_many :line_items
end
