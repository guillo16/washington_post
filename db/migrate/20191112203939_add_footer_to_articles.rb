class AddFooterToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :footer_1, :string
    add_column :articles, :footer_2, :string
  end
end
