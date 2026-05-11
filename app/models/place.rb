class Place < ApplicationRecord
  belongs_to :prefecture

  enum :status, { visited: 0, want_to_visit: 1 }

  validates :name, presence: { message: "名称を入力してください" }
  validates :status, presence: { message: "訪問状況を選択してください" }
end
