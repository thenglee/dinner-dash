require 'rails_helper'

RSpec.describe Category, type: :model do
  it "has a valid factory" do
    category = create(:category)
    expect(category.valid?).to eq true
  end

  describe "validations" do
    it "is invalid without name" do
      category = build(:category, name: nil)
      expect(category.valid?).to eq false
    end
  end

  describe "assocations" do
    before do
      @category = create(:category)
    end

    it "can have items" do
      expect(@category.respond_to?(:items)). to eq true
    end

    it "return its items" do
      item = create(:item, categories: [@category])
      expect(@category.items).to eq [item]
    end
  end
end
