class CreateCartoons < ActiveRecord::Migration
  def self.up
    create_table :cartoons do |t|
      t.string :caption

      t.timestamps
    end
  end

  def self.down
    drop_table :cartoons
  end
end
