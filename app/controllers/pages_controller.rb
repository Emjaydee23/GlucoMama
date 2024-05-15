class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @recordings = Recording.all
    @meals = Meal.all
    @results = Result.all
  end

  def about
  end


end
