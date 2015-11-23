require 'rails_helper'

RSpec.describe Item, type: :model do

  it "has a valid factory" do
    item = create(:item)
    expect(item.valid?).to eq true
  end

  describe "validations" do
    before do
      @item = build(:item)
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
  end

  describe "associations"
end
