class ApplicationsController < ApplicationController
  def new
    @application = Application.new
  end

  def create
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
      permit(:academic_year, :semester, :home_address, :home_phone, :student_id, :age, :date_of_birth, :gender, :parent_name, :parent_address, :parent_home_telephone, :parent_work_telephone, :student_status, :building_preference, :roommate_preference, :roommate1, :roommate2, :roommate3, :any_disability, :disability_description, :previous_application).
      merge(:user_id => current_user.id)
  end
end
