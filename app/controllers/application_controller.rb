class ApplicationController < ActionController::Base
before_action :devise_parameters, if: :devise_controller?
before_action :authenticate_user!, only: [:new ,:create,:edit,:destroy]

private
def devise_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:profile,:occupation,:position])
end

end