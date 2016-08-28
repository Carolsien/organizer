class ChangeBrideDressType < ActiveRecord::Migration[5.0]
  def change
    change_column :bride_dresses, :fitting, :datetime
  end
end
