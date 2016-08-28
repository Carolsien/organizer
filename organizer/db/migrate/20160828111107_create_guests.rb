class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :subname
      t.text :description

      t.timestamps
    end
  end
end
