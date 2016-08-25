class CreateBrideDresses < ActiveRecord::Migration[5.0]
  def change
    create_table :bride_dresses do |t|
      t.string :model
      t.integer :size
      t.date :fitting
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
