class LandmarksController < ApplicationController
  def index
    @landmark = Landmark.order("RANDOM()").first   
  end

  def create
    @landmark = Landmark.create(landmark_params)
    if @landmark.invalid?
      flash[:error] = '<strong>Could not save</strong> that is not a Jamaican landmark.' 
    end
    redirect_to root_path
  end

  def about
  end

  private

  def landmark_params
    params.require(:landmark).permit(:name, :location)
  end
end
