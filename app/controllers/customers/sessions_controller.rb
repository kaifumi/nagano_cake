# frozen_string_literal: true

class Customers::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    super
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

# ↓ログイン、ログアウト後のリダイレクト先を変更
  # def after_sign_in_path_for(resource)
  #   customer_customer_path(resource)
  # end
  
  # def after_sign_out_path_for(resource)
  #   new_customer_session_path
  # end
end
