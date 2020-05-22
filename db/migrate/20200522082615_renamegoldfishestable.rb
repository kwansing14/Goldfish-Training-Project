class Renamegoldfishestable < ActiveRecord::Migration[5.2]
  def change
    rename_table :golfishes, :goldfishes
  end
end