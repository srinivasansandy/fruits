class CreateOranges < ActiveRecord::Migration[5.2]
  def change
    create_table :oranges do |t|
      t.integer :basket_id
      t.string :variety
      t.timestamps
    end
  end
end
