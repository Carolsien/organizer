class CreateWeddingRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :wedding_rooms do |t|
      t.string :name
      t.text :adress

      t.timestamps
    end
  end
end
