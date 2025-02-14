class DropKeyboards < ActiveRecord::Migration[7.2]
  def change
    drop_table :keyboards
  end
end
