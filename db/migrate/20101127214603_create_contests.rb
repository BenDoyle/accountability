class CreateContests < ActiveRecord::Migration
  def self.up
    create_table :contests do |t|
      t.integer 'person_id'
      t.integer 'region_id'
      t.date    'contest_date'
      t.integer 'votes'
      t.timestamps
    end
  end

  def self.down
    drop_table :contests
  end
end
