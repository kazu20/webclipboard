class AddDetailsToFusens < ActiveRecord::Migration[5.1]
  def change
    add_column :fusens, :color, :string
  end
end
