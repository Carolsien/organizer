class CreateGroomSuits < ActiveRecord::Migration[5.0]
  def change
    create_table :groom_suits do |t|
      t.string :model
      t.integer :size
      t.datetime :fitting

      t.timestamps
    end
  end
end
