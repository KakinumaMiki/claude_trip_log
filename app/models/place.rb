class Place < ApplicationRecord
  belongs_to :prefecture
  validates :name, presence: true
end
