class PersonsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create, :destroy, :unsubscribe_notifications, :unsubscribe]

# Подписка на новости выбранной категории
# Можно подписываться хоть на все категории, не жалко
  def subscribe
    @category = Category.find(params[:category_id])

    @user = current_user
    @user.categories << @category if !@user.categories.include? @category
    redirect_to root_path, notice: 'Subscription was successfully saved!'

  end

# Отписка от новостной рассылки для залогиненного и незалогиненного юзера
# из профиля или из письма 
  def unsubscribe
    if user_signed_in?
      @user = current_user
    else
      @user = User.find_by_user_token(params[:user_token])
    end

    @user.categories.clear
    redirect_to persons_path, notice: 'Вы были успешно отписаны от новостной рассылки!'
  end

# Отписка от уведомлений о публикации, отклонении статей для незалогиненного юзера из письма
  def unsubscribe_notifications
    # binding.pry
    @user = User.find_by_user_token(params[:user_token])
    @user.update_attributes(:mail_notifyers => false)
    redirect_to root_path, notice: 'Подписка успешно отменена!'
    # flash.now[:alert] = 'Не работает :('
  end

  def subscribe_notifications
    @user = current_user
    @user.update_attributes(:mail_notifyers => true)

  end

  def index
    @categories = Category.all
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
    params.require(:user).permit(:name, :email, :password, :user_token)
  end

end
