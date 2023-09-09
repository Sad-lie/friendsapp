class CreateDiaryEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :diary_entries do |t|
      t.string :title
      t.text :content
      t.date :entry_date

      t.timestamps
    end
  end
end
