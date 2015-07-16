class FoodsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @user = User.find(current_user.id)
    @new_food = Food.new

    @foods = Food.order(sort_column + " " + sort_direction).select(:name, :calories).uniq.paginate(per_page: 10, page: params[:page])

    respond_to do |format|
      format.html { render "index" }
      format.js
    end
  end

  def create
    @user = current_user
    @new_food = Food.new(name: food_params[:name], calories: food_params[:calories])

    @user.foods.push(@new_food)

    @foods = Food.order(sort_column + " " + sort_direction).select(:name, :calories).uniq.paginate(per_page: 10, page: params[:page])

    respond_to do |format|
      if @new_food.save
        format.html { redirect_to :back }
        format.js { render "index" }
      else
        format.html { render "index" }
        format.js
      end
    end
  end

  private

  #sort functions
  def food_params
    params.require(:food).permit(:sort, :direction, :name, :calories)
  end

  def sort_column
    params[:sort] || "name"
  end

  def sort_direction
    params[:direction] || "asc"
  end
end
