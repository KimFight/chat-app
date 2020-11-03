class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  # userテーブルとroomテーブルにも記入を忘れない
  has_one_attached :image
  # 一対一の関係。記述したモデルの各レコードは、それぞれ1つのファイルを添付できる。
  # message.image で添付ファイルにアクセスできるようになった。


  validates :content, presence: true, unless: :was_attached?
  # validates はモデルに記述
  # unless: :was_attached? メソッドの返り値がfalseならばバリデーションする


  def was_attached?
    self.image.attached?
    # self.image.attached? 画像があればtrue、なければfalseを返す仕組み
  end

end
