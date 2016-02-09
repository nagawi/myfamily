class AddImageToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :image_animal, :string
  end
end
