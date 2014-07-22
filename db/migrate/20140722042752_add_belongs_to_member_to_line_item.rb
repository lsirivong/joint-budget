class AddBelongsToMemberToLineItem < ActiveRecord::Migration
  def change
    add_reference :line_items, :member, index: true
  end
end
