FactoryGirl.define do
  factory :category do
    name "Main"

    factory :category_with_items do
      transient do
        items_count 1
      end

      after(:create) do |category, evaluator|
        create_list(:categories_items, evaluator.items_count, category, category)
      end
    end
  end
end
