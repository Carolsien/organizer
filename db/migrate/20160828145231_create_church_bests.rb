class CreateChurchBests < ActiveRecord::Migration[5.0]
  def change
    create_table :church_bests do |t|
      t.string :name
      t.string :surname

      t.timestamps
    end
  end
end
