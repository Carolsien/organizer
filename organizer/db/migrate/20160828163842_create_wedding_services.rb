class CreateWeddingServices < ActiveRecord::Migration[5.0]
  def change
    create_table :wedding_services do |t|
      t.string :who
      t.text :name
      t.text :contact

      t.timestamps
    end
  end
end
