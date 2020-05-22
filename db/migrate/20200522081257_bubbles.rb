class Bubbles < ActiveRecord::Migration[5.2]
  def change
    create_table :bubbles do |t|
      t.text :body
      t.string :title
      t.string :img_url
      t.references :user_id
      t.timestamps
    end
  end
end