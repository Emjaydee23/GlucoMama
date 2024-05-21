class RecordingsController < ApplicationController

  def index
    @user = params[:patient].present? ? User.find(params[:patient])  : current_user
    @recordings = @user.recordings.order(date: :desc)
    @meal_recordings = @user.recordings.order(date: :desc).where.not(ingredients: "")
    @blood_glucose_recordings = @user.recordings.order(date: :desc).where(ingredients: "").or(@recordings.where.not(ingredients: ""))
    @searches = @blood_glucose_recordings.where(date: params[:query])
    @patients = User.where(clinician: false)

  end

  def show
    @recording = Recording.find(params[:id])
    @recording.destroy
    redirect_to recordings_path, status: :see_other
  end



  def feedback
    # @reading = Recording.find(params[:id]).reading
    @reading = Recording.find(params[:id]).reading
    @timing_above = Meal.all.where(threshold: "above").group_by(&:timing).transform_values(&:first).values
    @timing_below = Meal.all.where(threshold: "below").group_by(&:timing).transform_values(&:first).values
  end

  def new
    @recording = Recording.new
  end

  def edit
    @recording = Recording.find(params[:id])
  end

  def update
    @recording = Recording.find(params[:id])
    @recording.update(recording_params)
    redirect_to recordings_path
  end

  def create
    @recording = Recording.new(recording_params)
    @recording.user = current_user
    if @recording.save
       # After submitting the form , details are submitted to index with all the BM and meal submissions of the last wek
      redirect_to feedback_path(@recording)
    else
      render :new, status: :unprocessable_entity
    end
    #Also redirected to the fedback page - personalised writing # Ruby if else logic will be in the html itself
  end

  def destroy
    @recording = Recording.find(params[:id])
    @recording.destroy
    redirect_to recordings_path, status: :see_other
  end




  private
  def recording_params
    params.require(:recording).permit(:reading, :date, :time, :ingredients)
  end

end
