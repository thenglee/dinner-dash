require 'rails_helper'

RSpec.describe Item, type: :model do
  it "has a valid factory" do
    item = create(:item, :with_categories)
    expect(item.valid?).to eq true
  end

  describe "validations" do
    before do
      @item = build(:item, :with_categories)
    end

    [:name, :description, :price, :available].each do |attr|
      it "is invalid without #{attr}" do
        @item.send("#{attr}=", nil)
        expect(@item.valid?).to eq false
      end
    end

    it "is invalid without numerical value for price" do
      @item.price = "ten"
      expect(@item.valid?).to eq false
    end

    it "is invalid without positive value for price" do
      @item.price = -12.5
      expect(@item.valid?).to eq false
    end

    it "does not allow duplicate item names" do
      first_item = create(:item, :with_categories, name: 'Chicken Rice')
      second_item = build(:item, :with_categories, name: 'chicken rice')
      expect(second_item.valid?).to eq false
    end

    it "is invalid without at least one category" do
      @item.categories = []
        expect(@item.valid?).to eq false
    end
  end

  describe "associations" do
    it "can have categories" do
      item = create(:item, :with_categories)
      expect(item.respond_to?(:categories)).to eq true
    end

    it "return its categories" do
      category = create(:category)
      item = create(:item, categories: [category])
      expect(item.categories).to eq [category]
    end
  end
end
