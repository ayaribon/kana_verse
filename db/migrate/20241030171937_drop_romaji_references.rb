class DropRomajiReferences < ActiveRecord::Migration[7.2]
  def change
    drop_table :romaji_references
  end
end
