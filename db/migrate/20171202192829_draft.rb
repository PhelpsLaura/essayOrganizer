class Draft < ActiveRecord::Migration[5.1]
  def change
    add_reference :drafts, :essay, index: true
  end
end
