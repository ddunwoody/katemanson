class AddCategoryIdToCartoon < ActiveRecord::Migration
  def self.up
    add_column :cartoons, :category_id, :integer
  end

  def self.down
    remove_column :cartoons, :category_id
  end
end
