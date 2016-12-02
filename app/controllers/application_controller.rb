class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  http_basic_authenticate_with name: "frontdesk", password: "ben2016-", except: :index

private

  def current_user
	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
