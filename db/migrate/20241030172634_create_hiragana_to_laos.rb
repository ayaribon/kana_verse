class CreateHiraganaToLaos < ActiveRecord::Migration[7.2]
  def change
    create_table :hiragana_to_laos do |t|
      t.string :hiragana
      t.string :lao

      t.timestamps
    end
  end
end
