class AddAdminFlagToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin, :string
    add_column :users, :, :boolean
  end
end
