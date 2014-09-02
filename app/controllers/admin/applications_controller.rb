class Admin::ApplicationsController < AdminController
  def index
    @applications = Application.all
  end

  def show
    @application = Application.find(params[:id])
  end

  def update
    @application = Application.find(params[:id])
    @application.toggle :approve if params[:approve]
    @application.toggle :decline if params[:decline]

    if @application.save
      if @application.approve
        flash[:notice] = "#{@application.user.email}" "'s application has been approved"
      elsif @application.decline
        flash[:notice] = "#{@application.user.email}" "'s application has been declined"
      end

      redirect_to admin_applications_path
    else
      @application = Application.find(params[:id])
      render "show"
    end
  end
end
