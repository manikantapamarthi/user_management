class ApplicationController < ActionController::Base
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
	

	def after_sign_in_path_for(resource)
	  user_path(resource)
	end

	def user_not_authorized
		flash[:notice] = 'You are not authorized to perform this action.'
		redirect_to user_path(current_user)
	end
end
