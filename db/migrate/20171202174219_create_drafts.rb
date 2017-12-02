class CreateDrafts < ActiveRecord::Migration[5.1]
  def change
    create_table :drafts do |t|
      t.text :content
      t.text :notes

      t.timestamps
    end
  end
end
