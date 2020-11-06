class RegistrationsController < Devise::RegistrationsController
  # def after_sign_in_path_for(resource)
  #   dashboard_path
  # end

  def after_sign_up_path_for(resource)
    questionnaire_path
  end
end
