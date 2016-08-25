class CreateBrideBeauticans < ActiveRecord::Migration[5.0]
  def change
    create_table :bride_beauticans do |t|
      t.string :name
      t.date :fitting
      t.date :meeting
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end