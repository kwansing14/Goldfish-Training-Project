class Images < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :program
      t.text :image_url
      t.timestamps
    end
  end
end