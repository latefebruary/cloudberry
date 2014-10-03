class PersonsController < ApplicationController

  before_action :authenticate_user!

  def index
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      flash[:notice] = I18n.t('devise.registrations.updated')
      redirect_to persons_path
    else
      flash.now[:alert] = I18n.t('simple_form.error_notification.default_message')
      render :index
    end
  end

  def password
    @user = current_user
  end

  def password_update
    @user = current_user
    if @user.update_attributes(user_params)
      flash[:notice] = I18n.t('devise.passwords.updated')
      sign_in @user, :bypass => true
      redirect_to persons_path
    else
      flash.now[:alert] = I18n.t('simple_form.error_notification.default_message')
      render :password
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
