class ConfirmationsController < Devise::ConfirmationsController
  def show
    redirect_to wellcome_path
  end
end