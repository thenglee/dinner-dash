FactoryGirl.define do
  factory :categorization do
    association :category
    association :item
  end
end
