class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  # userテーブルとroomテーブルにも記入を忘れない
  has_one_attached :image
  # 一対一の関係。記述したモデルの各レコードは、それぞれ1つのファイルを添付できる。
  # message.image で添付ファイルにアクセスできるようになった。


  validates :content, presence: true
  # validates はモデルに記述。

end
