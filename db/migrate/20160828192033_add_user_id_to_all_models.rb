class AddUserIdToAllModels < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :user_id, :integer

    add_column :church_bests, :user_id, :integer
    add_column :church_rings, :user_id, :integer
    add_column :church_ceremonies, :user_id, :integer
    add_column :church_decorations, :user_id, :integer

    add_column :groom_accessories, :user_id, :integer
    add_column :groom_suits, :user_id, :integer

    add_column :wedding_rooms, :user_id, :integer
    add_column :wedding_services, :user_id, :integer
    add_column :wedding_decorations, :user_id, :integer
  end

end
