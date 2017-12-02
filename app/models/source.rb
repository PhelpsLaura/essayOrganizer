class Source < ApplicationRecord
  has_many :research_cards, :dependent => :destroy
  belongs_to :essay
end
