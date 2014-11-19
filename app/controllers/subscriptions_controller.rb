class SubscriptionsController < ApplicationController
  before_action :authenticate_user!, exept: [:unsubscribe]

  def create
    if !current_user.subscriptions.find_by_category_id(params[:id]).present?
      @subscription = current_user.subscriptions.create(category_id: params[:id])
      redirect_to root_path, notice: 'Подписка на новости оформлена!'
    else
      flash[:notice] = 'Вы уже подписаны на новости этой категории'
      redirect_to articles_path(id: params[:id])
    end
  end

  def unsubscribe
    if !user_signed_in?
      @user = User.find_by_user_token(params[:user_token])
    end
    @user.subscriptions.clear
    redirect_to persons_path, notice: 'Вы были успешно отписаны от новостной рассылки!'
  end

  def destroy
    current_user.subscriptions.find_by_category_id(params[:id]).destroy
    redirect_to persons_path
  end

end
