class HallsController < AdminController
  def index
    @halls = Hall.all
  end
end