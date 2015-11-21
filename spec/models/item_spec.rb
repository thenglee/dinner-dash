require 'rails_helper'

RSpec.describe Item, type: :model do
  it "is valid" do
    item = Item.new(name: 'Chicken Pad Thai', description: 'Delicious chicken pad thai with peanuts and chilli flakes by the side.', price: 12.50, available: true)
    expect(item.valid?).to eq true
  end
end
