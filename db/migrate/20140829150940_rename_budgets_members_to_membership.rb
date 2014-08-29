class RenameBudgetsMembersToMembership < ActiveRecord::Migration
  def change
    rename_table :budgets_members, :memberships
  end
end
