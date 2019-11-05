class AddFieldsToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :photo, :string
    add_column :articles, :photo1, :string
    add_column :articles, :photo2, :string
    add_column :articles, :photo3, :string
    add_column :articles, :photo4, :string
    add_column :articles, :subtitle, :string
    add_column :articles, :content_1, :string
    add_column :articles, :content_2, :string
    add_column :articles, :content_3, :string
    add_column :articles, :video, :string
  end
end
