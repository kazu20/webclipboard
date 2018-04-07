class AddColumnUsersToCreateUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :create_user, :integer
  end
end
