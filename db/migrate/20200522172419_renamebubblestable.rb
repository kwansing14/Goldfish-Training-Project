class Renamebubblestable < ActiveRecord::Migration[5.2]
  def change
    rename_table :bubbles, :fishtagrams
  end
end