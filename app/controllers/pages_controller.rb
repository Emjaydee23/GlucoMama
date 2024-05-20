
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @user = current_user
    @recordings = current_user.recordings.order(date: :desc)
    @meal_recordings = current_user.recordings.order(date: :desc).where.not(ingredients: "")
    @blood_glucose_recordings = current_user.recordings.order(date: :desc).where(ingredients: "").or(@recordings.where.not(ingredients: ""))
    @searches = @blood_glucose_recordings.where(date: params[:query])

  end

  def show
    @user = current_user
  end

  def feedback

  end

end
