class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.string :discription

      t.timestamps
    end
  end
end
