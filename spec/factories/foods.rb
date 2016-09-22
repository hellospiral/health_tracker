FactoryGirl.define do
  factory :food do
    name("Eggs")
    calories_per_serving(60)
    serving_size("1 egg")
  end
end
