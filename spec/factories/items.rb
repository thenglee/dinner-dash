FactoryGirl.define do
  factory :item do
    name 'Chicken Pad Thai'
    description 'Delicious chicken pad thai with peanuts and chilli flakes by the side.'
    price 12.5
    available true

    factory :item_with_categories do
      transient do
        categories_count 1
      end

      after(:create) do |item, evaluator|
        create_list(:categories_items, evaluator.categories_count, item: item)
      end
    end
  end
end
