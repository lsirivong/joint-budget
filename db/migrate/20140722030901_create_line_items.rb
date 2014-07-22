class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :description
      t.decimal :amount

      t.timestamps
    end
  end
end
