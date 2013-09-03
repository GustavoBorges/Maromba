class AddUserIdToMedidas < ActiveRecord::Migration
  def change
    add_column :medidas, :user_id, :integer
  end
end
