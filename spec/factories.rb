FactoryGirl.define do
  factory :item do
    name 'Chicken Pad Thai'
    description 'Delicious chicken pad thai with peanuts and chilli flakes by the side.'
    price 12.5
    available true
  end

  factory :category do
    name "Main"
  end

  factory :category_item do
    association :category
    association :item
  end
end
