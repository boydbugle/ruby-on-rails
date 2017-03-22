class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_filter :require_login, only:[:edit, :update]

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  
  # def require_login
  #    current_user=nil?
  #     flash[:alert] = "You must be logged in to access this section"
  #     redirect_to login_url 
  # end
end
