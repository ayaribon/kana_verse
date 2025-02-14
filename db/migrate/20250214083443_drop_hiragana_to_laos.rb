class DropHiraganaToLaos < ActiveRecord::Migration[7.2]
  def change
    drop_table :hiragana_to_laos
  end
end