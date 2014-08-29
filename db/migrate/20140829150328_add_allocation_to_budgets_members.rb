class AddAllocationToBudgetsMembers < ActiveRecord::Migration
  def change
    add_column :budgets_members, :allocation, :decimal
  end
end
