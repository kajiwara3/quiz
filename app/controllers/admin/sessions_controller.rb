class Admin::SessionsController < ::Devise::SessionsController
  #layout "admin"
  # the rest is inherited, so it should work
  def after_sign_in_path_for(resource)
    :admin_root
  end

  def after_sign_out_path_for(resource)
    :admin_root
  end
end