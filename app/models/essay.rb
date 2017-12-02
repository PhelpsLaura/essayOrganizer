class Essay < ApplicationRecord
  has_many :drafts, :dependent => :destroy
  has_many :sources, :dependent => :destroy
end
