class AddAnonceToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :anonce, :string
  end
end
