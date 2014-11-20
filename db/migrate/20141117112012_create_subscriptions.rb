class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.belongs_to :user, index: true
      t.belongs_to :category, index: true

      t.timestamps
    end
  end
end
