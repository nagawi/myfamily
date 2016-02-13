class AddImageToFishes < ActiveRecord::Migration
  def change
    add_column :fishes, :image_fish, :string
  end
end
