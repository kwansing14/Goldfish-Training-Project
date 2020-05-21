class AddDetailToPrograms < ActiveRecord::Migration[5.2]
  def change
    add_column :programs, :details, :string
  end
end
