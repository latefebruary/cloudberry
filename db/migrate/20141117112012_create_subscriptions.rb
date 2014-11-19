class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :category_id
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
