class Admin::UsersController < AdminController
  def index
    @users = User.all
  end

  def update
    user = User.find(params[:id])
    user.update(resident_manager: params[:resident_manager], resident_assistant: params[:resident_assistant])

    redirect_to admin_users_path
  end

  #  def destroy
  #    user = User.find(params[:id])
  #    if params[:resident_manager]
  #      user.destroy
  #    elsif params[:resident_assistant]
  #      user.destroy
  #    end
  #
  #    redirect_to admin_users_path
  #  end

  private 

end
