class Admin::ApplicationsController < AdminController
  def index
    @users = User.all
  end

  def show
    @application = Application.find(params[:id])
  end
end
