class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @todays_consumptions = @user.consumptions.where("created_at::date =?", Date.today)
  end
end
