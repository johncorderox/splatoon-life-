class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_up_path_for(resource)
    home_path
  end

  def after_sign_in_path_for(resource)
    home_path
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys:
      [:email, :current_password, :location, :username, :splatoon_game, :favorite_weapon, :timezone, :language
      ])
  end


end
