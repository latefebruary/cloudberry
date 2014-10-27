class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :anonce
      t.string :image
      t.text :text

      t.timestamps
    end
  end
end
