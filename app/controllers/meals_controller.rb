class MealsController < ApplicationController
  def index
    @meals = Meal.all

  end

  def show
    @meal = Meal.find(params[:id])
  end

  def breakfast
    @meals = Meal.where(timing: "breakfast")
  end

  def lunch
    @meals = Meal.where(timing: "lunch")
  end

  def dinner
    @meals = Meal.where(timing: "dinner")
  end

  def snacks
    @meals = Meal.where(timing: "snack")
  end
end
