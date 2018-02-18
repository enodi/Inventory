class ChangeRoleType < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :permission, :string
  end
end
