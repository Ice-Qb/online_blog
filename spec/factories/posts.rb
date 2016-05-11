FactoryGirl.define do
  factory :post do
    sequence(:title) { |n| "title ##{n}" }
    sequence(:body) { |n| "body ##{n}" }
    category
  end
end
