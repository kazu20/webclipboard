class CreateFusens < ActiveRecord::Migration[5.1]
  def change
    create_table :fusens do |t|
      t.string :title
      t.string :message
      t.integer :top
      t.integer :left
      t.integer :dom_height
      t.integer :dom_width

      t.timestamps
    end
  end
end
