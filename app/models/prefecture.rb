class Prefecture < ApplicationRecord
  has_many :places, dependent: :destroy
end
