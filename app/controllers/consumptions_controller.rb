class ConsumptionsController < ApplicationController
  def create
    @user = current_user
    @todays_consumptions = @user.consumptions.where("created_at::date =?", Date.today)
    @consumption = Consumption.new(consumption_params)
    if @consumption.save
      flash[:notice] = "Food saved!"
      respond_to do |format|
        format.html {redirect_to user_path(current_user)}
        format.js
      end
    else
      flash[:alert] = "Whoops, try again."
      redirect_to user_path(@user)
    end
  end

private
  def consumption_params
    params.require(:consumption).permit(:meal, :user_id, :food_id, :servings)
  end
end
