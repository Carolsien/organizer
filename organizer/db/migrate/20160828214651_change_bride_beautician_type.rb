class ChangeBrideBeauticianType < ActiveRecord::Migration[5.0]
  def change
    change_column :bride_beauticans, :fitting, :datetime
    change_column :bride_beauticans, :meeting, :datetime
  end
end
