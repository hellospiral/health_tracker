class Consumption < ActiveRecord::Base
  validates :meal, :user_id, :servings, :calories, :food_id, :presence => true
  belongs_to :user
  belongs_to :food
end
