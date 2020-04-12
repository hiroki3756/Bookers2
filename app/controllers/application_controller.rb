class ApplicationController < ActionController::Base
    before_action :authenticate_user!, except: [:about, :home, :sign_in, :sign_up]
    before_action :configure_permitted_parameters,if: :devise_controller? 
    
    
    def after_sign_out_path_for(resource)
        '/'
      end

      private

      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up,keys:[:email])
      end
    
end
