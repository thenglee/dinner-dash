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
end
