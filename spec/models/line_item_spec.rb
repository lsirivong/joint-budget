require 'rails_helper'

RSpec.describe LineItem, :type => :model do
  subject(:line_item) { Fabricate.build(:line_item) }

  context "nil member" do
    before do
      line_item.member = nil
    end

    it do
      expect(line_item.purchaser_name).to be_blank
    end
  end

  context "with member" do
    before do
      line_item.member = Member.new(name: 'member name')
    end

    it do
      expect(line_item.purchaser_name).to eq('member name')
    end
  end
end
