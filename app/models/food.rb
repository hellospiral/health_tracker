class Food < ActiveRecord::Base
  has_many :consumptions
  validates :name, :calories_per_serving, :serving_size, :presence => true
end
