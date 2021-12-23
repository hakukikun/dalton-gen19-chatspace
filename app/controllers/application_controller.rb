class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?
    skip_before_action :verify_authenticity_token

    protect_from_forgery with: :null_session

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up)
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path # ←redirect先にしたいpathを書く
  end

  def set_csrf_token_header
    response.set_header('X-CSRF-Token', form_authenticity_token)
  end
end
