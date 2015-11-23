require 'rails_helper'

RSpec.describe Item, type: :model do

  it "has a valid factory" do
    item = create(:item)
    expect(item.valid?).to eq true
  end

  describe "validations"
  describe "associations"
end
