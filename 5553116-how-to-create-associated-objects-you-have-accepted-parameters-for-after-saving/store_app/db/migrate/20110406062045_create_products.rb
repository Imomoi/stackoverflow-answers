class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :style_no
      t.integer :market_price
      t.string :designer
      t.string :short_description
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
