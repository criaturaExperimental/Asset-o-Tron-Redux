class RegistrationsController < Devise::RegistrationsController

  # Override Devise sanitazion controller params here

  private

  def sign_up_params
    params.require(:user).permit(:firstName, :lastName, :email, :password, :password_confirmation, :username, :description, :web)
  end

  def account_update_params
    params.require(:user).permit(:firstName, :lastName, :email, :password, :password_confirmation, :current_password, :username, :description, :web)
  end
end
