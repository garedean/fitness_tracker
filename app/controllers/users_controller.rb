
class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @new_food = Food.new
  end
end
