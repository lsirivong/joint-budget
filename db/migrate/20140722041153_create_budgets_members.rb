class CreateBudgetsMembers < ActiveRecord::Migration
  def change
    create_table :budgets_members do |t|
      t.belongs_to :member, index: true
      t.belongs_to :budget, index: true
    end
  end
end
