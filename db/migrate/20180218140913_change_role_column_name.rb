class ChangeRoleColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :permission, :role
  end
end
