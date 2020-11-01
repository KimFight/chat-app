class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      # references型は外部キーのカラムを追加する際に使う
      # foreign_key: true という制約を設け他テーブルの情報を参照できる

      t.timestamps
    end
  end
end
