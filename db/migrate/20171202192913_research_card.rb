class ResearchCard < ActiveRecord::Migration[5.1]
  def change
    add_reference :research_cards, :source, index: true
  end
end
