class Accounts::RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(_resource)
    new_account_session_path
  end
end

