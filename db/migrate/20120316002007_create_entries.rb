class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.decimal :amount
      t.string :currency, limit: 3
      t.timestamps
    end
  end
end
