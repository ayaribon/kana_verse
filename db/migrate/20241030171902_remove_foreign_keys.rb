class RemoveForeignKeys < ActiveRecord::Migration[7.2]
  def change
    remove_foreign_key :hiragana_laos, :hiraganas
    remove_foreign_key :keyboards, :hiraganas
    remove_foreign_key :romaji_references, :hiragana_laos
    remove_foreign_key :romaji_references, :hiraganas
  end
end
