class AddMailNotifyersToUser < ActiveRecord::Migration
  def change
    add_column :users, :mail_notifyers, :boolean, default: true
  end
end
