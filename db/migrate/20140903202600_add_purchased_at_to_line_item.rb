class AddPurchasedAtToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :purchased_at, :datetime, :null => false, :default => Date.today
  end
end
