require 'rails_helper'

RSpec.describe Budget, :type => :model do
  context "without a name" do
    # budget = Fabricate(:budget, name: nil)
    budget = Fabricate.build :budget_without_a_name

    it "requires a name" do
      expect{budget.save!}.to raise_error
    end
  end

  context "with no line items" do
    budget = Fabricate :budget
    it "has a total of zero" do
      expect(subject.total).to eq(0)
    end
  end

  context "with line items" do
    before {
      @budget = Fabricate.build(:budget) do
        line_items [
          Fabricate.build(:line_item, amount: 1.30),
          Fabricate.build(:line_item, amount: 2.41)
        ]
      end
    }

    it "sums the amount of its line items" do
      expect(@budget.total).to eq(3.71)
    end

  end
end
