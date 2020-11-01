class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  # userテーブルとroomテーブルにも記入を忘れない
end
