require 'rails_helper'

RSpec.describe Consumption, type: :model do
  it { should belong_to :user }
  it { should belong_to :food }
  it { should validate_presence_of :meal }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :servings }
  it { should validate_presence_of :food_id }

  describe 'calculate_calories' do
    it ("calculates how many calories are in a consumption") do
      user = FactoryGirl.create(:user)
      food = FactoryGirl.create(:food)
      expect(food.id).to(eq(1))
      consumption = food.consumptions.new({:meal => "Breakfast", :servings => 2, :user_id => user.id})
      consumption.save
      expect(consumption.calories).to(eq(120))
    end
  end

end
