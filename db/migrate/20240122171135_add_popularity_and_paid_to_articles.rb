class AddPopularityAndPaidToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :popularity, :integer
    add_column :articles, :paid, :boolean
  end
end
