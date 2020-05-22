class Comments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user_id
      t.references :bubble_id
      t.string :body
      t.timestamps
    end
  end
end