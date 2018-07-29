class LandmarksController < ApplicationController
  def index
    
  end

  def new
    @landmark = Landmark.new
  end

  def create
    if @landmark.valid?
      redirect_to root_path
    else
      render :new, status: unprocessable_entity
    end
  end

  def show
    @landmark = Landmark.find(params[:id])
  end

  def update
    @landmark.update_attributes(landmark_params)
    if @landmark.valid?
      redirect_to root_path
    else
      render :edit, status: unprocessable_entity
    end
  end
end
