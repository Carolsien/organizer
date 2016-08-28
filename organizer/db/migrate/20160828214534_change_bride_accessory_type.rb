class ChangeBrideAccessoryType < ActiveRecord::Migration[5.0]
  def change
    change_column :bride_accessories, :size, :integer
  end
end
