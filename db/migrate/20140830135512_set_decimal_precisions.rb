class SetDecimalPrecisions < ActiveRecord::Migration
  def up
    change_column :line_items, :amount, :decimal, precision: 10, scale: 2, :null => false

    change_column :memberships, :allocation, :decimal, precision: 12, scale: 11, :null => false, :default => 0
  end

  def down
    change_column :line_items, :amount, :decimal, :null => false

    change_column :memberships, :allocation, :decimal, :null => false, :default => 0
  end
end
