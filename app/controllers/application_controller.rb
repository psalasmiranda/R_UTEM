class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def authenticate_admin!
    unless current_user.present?
      flash[:user] = "No tienes autorización para entrar en esa sección"
      redirect_to root_path
    end
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre,:sexo,:paterno,:materno,:cantidad, :tope,:red_fija,:red_movil,:imagen,:personal,:carrera,:sede,:rol,:bloqueo,:penalizar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nombre,:sexo,:paterno,:materno,:cantidad, :tope,:red_fija,:red_movil,:imagen,:personal,:carrera,:sede,:rol,:bloqueo,:penalizar])
  end

end
