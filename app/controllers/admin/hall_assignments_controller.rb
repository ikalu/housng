class Admin::HallAssignmentsController < AdminController
  def index
    @hall_assignments = HallAssignment.all
  end

  def create
    user = User.find(params[:user_id])
    hall = Hall.find(params[:id])

    user.halls << hall

    redirect_to [:admin, user]
  end

  def destroy
    user = User.find(params[:user_id])
    hall_assignment = user.hall_assignments.find_by(hall_id: params[:id])

    hall_assignment.destroy

    redirect_to [:admin, user]
  end
end
