class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = User.all
    @recordings = Recording.all
    @meals = Meal.all
    @results = Result.all
  end

  def about
  end

  def patients
  end

  def profile

  end


end
