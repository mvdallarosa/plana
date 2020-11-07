class RegistrationsController < Devise::RegistrationsController
  # def after_sign_in_path_for(resource)
  #   dashboard_path
  # end

  def after_sign_up_path_for(resource)
    questionnaire_path
  end

  def after_update_path_for(resource)
    profile_path
  end

  def update
    params.permit!
    if resource.update_attributes(params[resource_name])
      set_flash_message :notice, :updated
      # Line below required if using Devise >= 1.2.0
      sign_in resource_name, resource, :bypass => true
      redirect_to after_update_path_for(resource)
    else
      clean_up_passwords(resource)
      redirect_to profile_path # That's the line I need to change
    end

  end

end
