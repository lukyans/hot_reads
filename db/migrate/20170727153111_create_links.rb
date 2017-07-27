class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :url
      t.integer :count

      t.timestamps null: false
    end
  end
end
