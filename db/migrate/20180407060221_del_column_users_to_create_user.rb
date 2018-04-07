class DelColumnUsersToCreateUser < ActiveRecord::Migration[5.1]
  def up
   remove_column :users, :create_user
  end
end
