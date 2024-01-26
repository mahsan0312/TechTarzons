class AddCustomCategoryIdToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :custom_category_id, :integer
  end
end
