class PersonsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create, :destroy]

    
  def subscribe
    @category = Category.find(params[:category_id])

    @user = current_user
    # binding.pry
    @user.categories << @category if !@user.categories.include? @category
    redirect_to root_path, notice: 'Subscription was successfully saved!'

  end

  def unsubscribe
    @user = current_user
    @user.categories.clear
    redirect_to persons_path, notice: 'You was successfully unsubscribed'
  end


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

  # def category_params
  #   params.require(:category).permit(:id)
  # end

end
