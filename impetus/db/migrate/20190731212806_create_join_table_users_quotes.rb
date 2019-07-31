class CreateJoinTableUsersQuotes < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :quotes do |t|
      # t.index [:user_id, :quote_id]
      # t.index [:quote_id, :user_id]
    end
  end
end
