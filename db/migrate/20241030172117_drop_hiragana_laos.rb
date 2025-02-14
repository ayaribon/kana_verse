class DropHiraganaLaos < ActiveRecord::Migration[7.2]
  def change
    drop_table :hiragana_laos
  end
end
