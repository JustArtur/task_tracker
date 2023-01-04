class ApplicationController < ActionController::Base
  # before_action :require_login

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def require_login
    if current_user.blank?
      redirect_to new_sessions_path, notice: 'Need to Login'
    end
  end
end
