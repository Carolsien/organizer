class CreateGroomAccessories < ActiveRecord::Migration[5.0]
  def change
    create_table :groom_accessories do |t|
      t.text :name
      t.string :colour
      t.integer :amount

      t.timestamps
    end
  end
end
