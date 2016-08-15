class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery 

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(user)
    if user.role == 'Teacher'
      classrooms_path
    else
      essays_path
    end
  end

   def after_sign_up_path_for(user)
    if user.role == 'Teacher'
      classrooms_path
    else
      essays_path
    end
  end

  def after_sign_out_path_for(user)
    homepage_path
  end


  protected



  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :role, :email, :password, :teacher)}
  	devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password)}
  	devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name, :role, :email, :password, :current_password, :teacher, :classroom)}
     @teachers = User.where(role: 0)
  end

end
