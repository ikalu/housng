class Admin::RoomsController < AdminController
  def create
    application = Application.find(params[:id])
  end

end
