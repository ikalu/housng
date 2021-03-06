module UserHelper
  def toggle_resident_manager_link(user)
    if !user.resident_manager
      link_to "Make Resident Manager", admin_user_path(user, resident_manager: true), method: :put
    else
      link_to "Unmake Resident Manager", admin_user_path(user, resident_manager: false), method: :put
    end
  end

  def toggle_resident_assistant_link(user)
    if !user.resident_assistant
      link_to "Make Resident Assistant", admin_user_path(user, resident_assistant: true), method: :put
    else
      link_to "Unmake Resident Assistant", admin_user_path(user, resident_assistant: false), method: :put
    end
  end

  def hall_assignment_link(user)
      link_to "Hall Assignment", [:admin, user]
  end
end
