class LocalizationsController < ApplicationController

  def new
    @elevator = Elevator.find(params[:elevator_id])
    @languages = Language.all
    @localization = Localization.new
  end


  def create
    @localization = Localization.new(localization_params)
    @localization.elevator_id = params[:elevator_id]
    @localization.save
    "yeah"
  end

  private
  def localization_params
    params.require(:localization).permit(:language_id, :trigger_word, :response)
  end

end