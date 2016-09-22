require 'rails_helper'

RSpec.describe Food, type: :model do
  it { should have_many :consumptions }
  it { should validate_presence_of :name }
  it { should validate_presence_of :calories_per_serving }
  it { should validate_presence_of :serving_size }
end
