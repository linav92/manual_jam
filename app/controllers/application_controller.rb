class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
  def authenticate_user!
    unless @current_user.present?
      flash[:danger] = "No tienes autorización para entrar en esa sección"
      redirect_to root_path
    end
  end
end
