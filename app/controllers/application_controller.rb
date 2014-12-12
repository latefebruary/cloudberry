class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :access_to_categories  

  def after_sign_in_path_for(resource)
  	root_path
  end

  def after_sign_out_path_for(resource_or_scope)
  	request.referrer
  end

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render_error 404
  end


  def render_error(status)
    respond_to do |format|
      format.html { render 'error_' + status.to_s() + '.html', :status => status, :layout => 'errors'}
      format.all { render :nothing => true, :status => status }
    end
  end

  protected

  def access_to_categories
    @categories = Category.all
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end
end
