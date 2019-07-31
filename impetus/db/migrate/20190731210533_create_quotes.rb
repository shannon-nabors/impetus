class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :content
      t.string :origin
      t.boolean :quotation
      t.boolean :seeded

      t.timestamps
    end
  end
end
