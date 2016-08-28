class CreateWeddingDecorations < ActiveRecord::Migration[5.0]
  def change
    create_table :wedding_decorations do |t|
      t.text :name
      t.string :colour
      t.integer :amount

      t.timestamps
    end
  end
end
