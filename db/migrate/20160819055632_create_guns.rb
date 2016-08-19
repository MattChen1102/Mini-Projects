class CreateGuns < ActiveRecord::Migration[5.0]
  def change
    create_table :guns do |t|
      t.string :name
      t.text :description
      t.boolean :is_public
      t.integer :capacity
      t.timestamps
    end
  end
end
