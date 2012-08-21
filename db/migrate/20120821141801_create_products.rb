class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :number
      t.string :name
      t.text :description
      t.integer :pvendor_id
      t.integer :pclass_id

      t.timestamps
    end
  end
end
