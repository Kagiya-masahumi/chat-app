class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permit_parameters, if: :devise_controller?


  def edit
    @user = User.find(params[:id])
  end

  







  private
    def configure_permit_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys:[:name])
    end


end
