require 'rails_helper'

RSpec.describe Item, type: :model do

  it "has a valid factory" do
    item = create(:item)
    expect(item.valid?).to eq true
  end

  describe "validations" do
    it "is invalid without a name" do
      item = build(:item, name: nil)
      expect(item.valid?).to eq false
    end

    it "is invalid without a description" do
      item = build(:item, description: nil)
      expect(item.valid?).to eq false
    end

    it "is invalid without a price" do
      item = build(:item, price: nil)
      expect(item.valid?).to eq false
    end

    it "is invalid without available" do
      item = build(:item, available: nil)
      expect(item.valid?).to eq false
    end
  end

  describe "associations"
end
