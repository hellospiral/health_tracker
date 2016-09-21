class Consumption < ActiveRecord::Base
  validates :meal, :user_id, :servings, :calories, :food_id, :presence => true
  belongs_to :user
  belongs_to :food
  before_validation :calculate_calories

private
  def calculate_calories
    food = Food.find(self.food_id)
    self.calories = (self.servings * food.calories_per_serving)
  end
end
