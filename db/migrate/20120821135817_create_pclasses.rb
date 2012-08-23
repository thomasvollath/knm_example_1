class CreatePclasses < ActiveRecord::Migration
  def change
    create_table :pclasses do |t|
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
