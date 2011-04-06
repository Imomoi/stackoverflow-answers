class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :key
      t.string :secret

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
