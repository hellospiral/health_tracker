FactoryGirl.define do
  factory :consumption do
    user
    food
    meal("Breakfast")
    servings(1)
  end
end
