class ChangeBrideHairdresserType < ActiveRecord::Migration[5.0]
  def change
    change_column :bride_hairdressers, :fitting, :datetime
    change_column :bride_hairdressers, :meeting, :datetime
  end
end
