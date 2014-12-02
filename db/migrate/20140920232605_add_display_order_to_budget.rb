class AddDisplayOrderToBudget < ActiveRecord::Migration
  def change
    add_column :budgets, :display_order, :integer
  end
end
