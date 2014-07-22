class AddBudgetIdToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :budget_id, :integer
  end
end
