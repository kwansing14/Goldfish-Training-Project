class Renamecolumnname < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :user_id_id, :user_id
    rename_column :comments, :bubble_id_id, :bubble_id
    rename_column :bubbles, :user_id_id, :user_id
    rename_column :follows, :user_id_id, :user_id
    rename_column :goldfishes, :user_id_id, :user_id
  end
end