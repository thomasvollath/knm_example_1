class CreatePvendors < ActiveRecord::Migration
  def change
    create_table :pvendors do |t|
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
