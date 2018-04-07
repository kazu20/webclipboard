class AddCreateUserToFusens < ActiveRecord::Migration[5.1]
  def change
    add_column :fusens, :create_user, :integer
  end
end
