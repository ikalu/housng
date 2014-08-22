class Admin::UsersController < AdminController
  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    toggle_resident_manager_and_resident_assistant

    if @user.save
      redirect_to admin_users_path
    else
      @users = User.all
      render "index" 
    end
  end

  private

  def toggle_resident_manager_and_resident_assistant
    @user.toggle :resident_manager if params[:resident_manager]
    @user.toggle :resident_assistant if params[:resident_assistant]
  end

end
