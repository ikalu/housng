class Admin::ApplicationsController < AdminController
  def index
    @applications = Application.all
  end

  def show
    @application = Application.find(params[:id])
  end

  def update
    @application = Application.find(params[:id])
    @application.update(status: params[:status])

    if @application.save
      flash_notification_message

      redirect_to admin_applications_path
    else
      render :show
    end
  end

  private

  def flash_notification_message
    if @application.approved?
      flash[:notice] = "#{@application.user.email}'s application has been approved"
    elsif @application.declined?
      flash[:notice] = "#{@application.user.email}'s application has been declined"
    end
  end
end
