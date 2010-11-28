class CreateRegions < ActiveRecord::Migration
  def self.up
    create_table :regions do |t|
      t.string 'name'
      t.string 'url'
      t.date   'date_created'
      t.date   'date_destroyed'
      t.timestamps
    end
  end

  def self.down
    drop_table :regions
  end
end
