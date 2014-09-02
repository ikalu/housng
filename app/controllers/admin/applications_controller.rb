class Admin::ApplicationsController < AdminController
  def index
    @applications = Application.all
  end

  def show
    @application = Application.find(params[:id])
  end

  def update
    @application = Application.find(params[:id])
    toggle_approve_and_decline

    if @application.save
      flash_notification_message

      redirect_to admin_applications_path
    else
      @application = Application.find(params[:id])
      render "show"
    end
  end

  private

  def toggle_approve_and_decline
    @application.toggle :approve if params[:approve]
    @application.toggle :decline if params[:decline]
  end

  def flash_notification_message
    if @application.approve
      flash[:notice] = "#{@application.user.email}'s application has been approved"
    elsif @application.decline
      flash[:notice] = "#{@application.user.email}'s application has been declined"
    end
  end
end
