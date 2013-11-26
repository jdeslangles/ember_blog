class ApplicationController < ActionController::Base
  protect_from_forgery

  respond_to :json
  helper_method :current_user_json
  serialization_scope :current_user
  before_filter :update_sanitized_params, if: :devise_controller?

  def current_user_json
    if current_user
      UserSerializer.new(current_user, :scope => current_user, :root => false).to_json
    else
      {}.to_json
    end
  end

  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.slice(:name, :email, :password, :password_confirmation)}
  end

end