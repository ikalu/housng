class ApplicationsController < ApplicationController
  def new
    @application = Application.new
  end

  def create
    #raise application_params.inspect
    application = Application.new(application_params)

    if application.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def application_params
    params.
      require(:application).
      permit(:academic_year, :semester, :home_address, :home_phone, :student_id, :age, :date_of_birth, :gender, :parent_name, :parent_address, :parent_home_telephone, :parent_work_telephone, :roommate_preference, :roommate1, :roommate2, :roommate3, :any_disability, :disability_description, :previous_application, :acknowledgment, student_status_ids: [], hall_ids: []).
      merge(user: current_user)
  end
end
