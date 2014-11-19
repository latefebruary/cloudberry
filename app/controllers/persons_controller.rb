class PersonsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create, :destroy, :unsubscribe_notifications, :unsubscribe]
  before_action { @user = current_user }

# Подписку на уведомления на почту можно вернуть в профиле
  def subscribe_notifications
    @user.update_attributes(:mail_notifyers => true)
    redirect_to persons_path, notice: 'Уведомления включены!'
  end

# Отписка от уведомлений о публикации, отклонении статей для незалогиненного юзера из письма
  def unsubscribe_notifications
    @user = User.find_by_user_token(params[:user_token])
    @user.update_attributes(:mail_notifyers => false)
    redirect_to root_path, notice: 'Подписка успешно отменена!'
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :user_token, :mail_notifyers)
  end

end
