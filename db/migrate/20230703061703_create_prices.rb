class CreatePrices < ActiveRecord::Migration[7.0]
  def change
    create_table :prices do |t|
      t.integer :user_id, null: false
      t.integer :price, null: false
      t.text :content, null: false
      t.timestamps
    end
  end
end
