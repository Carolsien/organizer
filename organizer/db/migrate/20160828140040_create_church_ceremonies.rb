class CreateChurchCeremonies < ActiveRecord::Migration[5.0]
  def change
    create_table :church_ceremonies do |t|
      t.string :name
      t.text :adress
      t.datetime :date

      t.timestamps
    end
  end
end
