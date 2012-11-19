class ConfirmationsController < Devise::ConfirmationsController
  def after_confirmation_path_for(resource_name, resource)
    # mail send
    wellcome_math
  end
end