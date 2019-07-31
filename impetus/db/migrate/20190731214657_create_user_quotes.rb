class CreateUserQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :user_quotes do |t|
      t.references :user, foreign_key: true
      t.references :quote, foreign_key: true

      t.timestamps
    end
  end
end
