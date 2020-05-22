class Goldfishes < ActiveRecord::Migration[5.2]
  def change
    create_table :golfishes do |t|
      t.references :user_id
      t.text :name
    end
  end
end