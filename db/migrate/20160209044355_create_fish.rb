class CreateFish < ActiveRecord::Migration
  def change
    create_table :fishes do |t|
      t.string :name
      t.text :note

      t.timestamps null: false
    end
  end
end
