class Source < ActiveRecord::Migration[5.1]
  def change
    add_reference :sections, :essay, index: true
  end
end
