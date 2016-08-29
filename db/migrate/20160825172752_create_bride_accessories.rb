class CreateBrideAccessories < ActiveRecord::Migration[5.0]
  def change
    create_table :bride_accessories do |t|
      t.string :name
      t.string :color
      t.integer :size
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
