class AddMinutesReadToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :minutes_read, :integer
  end
end
