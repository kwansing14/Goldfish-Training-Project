class Programs < ActiveRecord::Migration[5.2]
  def change
    create_table :programs do |t|
      t.string :duration
      t.decimal :cost , precision: 10, scale: 2
      t.integer :contact_no
      t.timestamps
    end
  end
end