class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @foods = Food.all
    @food = Food.new(food_params)
    if @food.save
      flash[:notice] = "Food added to the database!"
      respond_to do |format|
        format.html {redirect_to user_path(current_user)}
        format.js
      end
    else
      flash[:alert] = "There was a problem adding your food, please try again"
      render new
    end
  end

  private
  def food_params
    params.require(:food).permit(:name, :calories_per_serving, :serving_size)
  end
end
