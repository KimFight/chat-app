class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users, dependent: :destroy
  has_many :messages, dependent: :destroy

  # 親モデルに dependent: :destroy を指定すると
  # 親テーブルのレコードが削除された時に関連している子テーブルのレコードも同時に削除される

  validates :name, presence: true
end
