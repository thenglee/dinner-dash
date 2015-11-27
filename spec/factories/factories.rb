FactoryGirl.define do
  factory :item do
    name 'Chicken Pad Thai'
    description 'Delicious chicken pad thai with peanuts and chilli flakes by the side.'
    price 12.5
    available true

    trait :with_category do
      after(:create) do |item|
        category = create(:category)
        create(:categorization, item: item, category: category)
      end
    end
  end

  factory :category do
    name "Main"
  end

  factory :categorization do
    association :category
    association :item
  end
end
