class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.string :title
      t.text :outline
      t.essay :references

      t.timestamps
    end
  end
end
