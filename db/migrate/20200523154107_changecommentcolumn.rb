class Changecommentcolumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :bubble_id, :fishtagram_id
  end
end