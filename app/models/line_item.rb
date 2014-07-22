class LineItem < ActiveRecord::Base
	belongs_to :budget
	belongs_to :member
end
