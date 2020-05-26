class ApplicationController < ActionController::Base
      # Prevent CSRF attacks by raising an exception.
      # For APIs, you may want to use :null_session instead.
      protect_from_forgery with: :exception

  before_action :set_constants
    def set_constants
      if current_user
        @programs_user = Programs_user.where(user_id: current_user.id)
        @enrolled = User.joins(:programs).where(user_id: current_user.id)
      end
    end

before_action :configure_permitted_parameters, if: :devise_controller?

      protected

          def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
            devise_parameter_sanitizer.permit(:account_update, keys: [:name])
          end
end