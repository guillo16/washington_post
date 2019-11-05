class AddGroupToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :group, :string
  end
end
