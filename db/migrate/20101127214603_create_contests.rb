class CreateContests < ActiveRecord::Migration
  def self.up
    create_table :contests do |t|
      t.integer 'region_id'
      t.date    'date'
      t.timestamps
    end
  end

  def self.down
    drop_table :contests
  end
end
