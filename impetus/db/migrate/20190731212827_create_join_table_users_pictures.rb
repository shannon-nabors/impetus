class CreateJoinTableUsersPictures < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :pictures do |t|
      # t.index [:user_id, :picture_id]
      # t.index [:picture_id, :user_id]
    end
  end
end
