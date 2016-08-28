class CreateChurchRings < ActiveRecord::Migration[5.0]
  def change
    create_table :church_rings do |t|
      t.string :name
      t.integer :size

      t.timestamps
    end
  end
end
