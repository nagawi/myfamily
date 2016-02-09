class CreateFish < ActiveRecord::Migration
  def change
    create_table :fish do |t|
      t.string :name
      t.text :note

      t.timestamps null: false
    end
  end
end
