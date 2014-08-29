class SetDatabaseDefaults < ActiveRecord::Migration
  def up
    change_column :budgets, :name, :string, :null => false

    change_column :line_items, :description, :string, :null => false
    change_column :line_items, :amount, :decimal, :null => false
    change_column :line_items, :budget_id, :integer, :null => false
    change_column :line_items, :member_id, :integer, :null => false

    change_column :members, :name, :string, :null => false
    change_column :members, :admin, :boolean, :null => false, :default => false

    change_column :memberships, :budget_id, :integer, :null => false
    change_column :memberships, :member_id, :integer, :null => false
    change_column :memberships, :allocation, :decimal, :null => false, :default => 0
  end

  def down
    change_column :budgets, :name, :string, :null => true

    change_column :line_items, :description, :string, :null => true
    change_column :line_items, :amount, :decimal, :null => true
    change_column :line_items, :budget_id, :integer, :null => true
    change_column :line_items, :member_id, :integer, :null => true

    change_column :members, :name, :string, :null => true
    change_column :members, :admin, :boolean, :null => true

    change_column :memberships, :budget_id, :integer, :null => true
    change_column :memberships, :member_id, :integer, :null => true
    change_column :memberships, :allocation, :decimal, :null => true
  end
end
