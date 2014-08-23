class Admin::HallsController < ApplicationController
  def index
    @halls = Hall.all
  end

  def new
    @hall = Hall.new
  end

  def create
    @hall = Hall.new(hall_params)

    if @hall.save?
      redirect_to admin_halls_path
    else 
      render :new
    end
  end

  private

  def hall_params
    params.
      require(:hall).
      permit(:name, :number_of_suites, :number_of_rooms)
  end
end
