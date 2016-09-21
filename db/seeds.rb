# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(email: "molly@gmail.com", password: "password")
food = Food.create(name: "Eggs", calories_per_serving: 60, serving_size: "1 egg")
consumption = Consumption.create(meal: "Breakfast", user_id: user.id, servings: 1, calories: 60, food_id: food.id)

foods_list = [
  ["Greek Yogurt", 120, "1 cup"],
  ["Pizza", 298, "1 slice"],
  ["Banana", 105, "1 banana"]
]

foods_list.each do |name, cals, serving_size|
  Food.create(name: name, calories_per_serving: cals, serving_size: serving_size)
end
