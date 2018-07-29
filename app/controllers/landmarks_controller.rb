class LandmarksController < ApplicationController
  def index
    @landmarks = Landmark.first   
  end

  def new
    @landmark = Landmark.new
  end

  def create
    @landmark = Landmark.create(landmark_params)
    if @landmark.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @landmark = Landmark.find(params[:id])
  end

  def edit
    @landmark = Landmark.find(params[:id])
  end

  def update
    @landmark = Landmark.find(params[:id])

    @landmark.update_attributes(landmark_params)
    if @landmark.valid?
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @landmark = Landmark.find(params[:id])

    @landmark.destroy
    redirect_to root_path
  end

  private
  
  def landmark_params
    params.require(:landmark).permit(:name, :location)
  end
end
