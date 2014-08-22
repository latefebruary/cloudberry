class AddPublishingStatusToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :is_published, :boolean, default: false
  end
end
