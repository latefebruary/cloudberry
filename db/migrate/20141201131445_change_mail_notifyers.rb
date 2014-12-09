class ChangeMailNotifyers < ActiveRecord::Migration
  def change
    rename_column :users, :mail_notifyers, :notifications
  end
end
