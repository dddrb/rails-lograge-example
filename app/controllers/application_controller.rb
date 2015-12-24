class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :authenticate

  def current_user
    if session[:user_id].present?
      @current_user ||= User.find(session[:user_id])
    end
  end

  def append_info_to_payload(payload)
    super
    payload[:host] = request.host
    payload[:username] = current_user.try(:username)
  end

  private
    def authenticate
      if current_user.blank?
        session.delete :user_id
        redirect_to user_sign_in_path
      end
    end
end
