class AddInvitationFieldsToGuestModel < ActiveRecord::Migration[5.0]
  def change
    add_column :guests, :invitation_sent, :boolean
    add_column :guests, :invitation_confirmed, :boolean
  end
end
