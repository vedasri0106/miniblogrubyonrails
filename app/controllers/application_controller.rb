 # app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.all.find { |user| user.id == session[:user_id] }
  end

  def logged_in?
    current_user.present?
  end
end