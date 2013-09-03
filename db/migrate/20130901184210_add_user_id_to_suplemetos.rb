class AddUserIdToSuplemetos < ActiveRecord::Migration
  def change
    add_column :suplementos, :user_id, :integer
  end
end
