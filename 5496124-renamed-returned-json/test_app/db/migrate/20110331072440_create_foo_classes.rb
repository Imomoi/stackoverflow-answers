class CreateFooClasses < ActiveRecord::Migration
  def self.up
    create_table :foo_classes do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :foo_classes
  end
end

