class RecordingsController < ApplicationController

  def index
    @recordings = current_user.recordings.order(date: :desc)
    @recordings_with_meal = current_user.recordings.order(date: :desc).where.not(ingredients: "")
    @recordings_without_meal = current_user.recordings.order(date: :desc).where(ingredients: "")
  end

  def new
    @recording = Recording.new
  end

  def create
    @recording = Recording.new(recording_params)
    @recording.user = current_user
    if @recording.save
       # After submitting the form , details are submitted to index with all the BM and meal submissions of the last wek
      redirect_to recordings_path
      # redirect_to feedback_path

    else
      render :new, status: :unprocessable_entity
    end
    #Also redirected to the fedback page - personalised writing # Ruby if else logic will be in the html itself
  end

  def show
    # @reading = Recording.find(params[:id]).reading
    @reading = current_user.Recording.find(params[:id]).reading
  end

  private
  def recording_params
    params.require(:recording).permit(:reading, :date, :time, :ingredients)
  end

end
