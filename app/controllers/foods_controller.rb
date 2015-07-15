class FoodsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index

    @foods = Food.order(sort_column + " " + sort_direction).paginate(per_page: 10, page: params[:page])

  end

  private


  #sort functions
  def food_params
    params.permit(:sort, :direction)
  end

  def sort_column
    food_params[:sort] || "name"
  end

  def sort_direction
    food_params[:direction] || "asc"

  end
end
