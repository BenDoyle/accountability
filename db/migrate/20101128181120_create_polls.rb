class CreatePolls < ActiveRecord::Migration
  def self.up
    create_table :polls do |t|
      t.integer 'person_id'
      t.integer 'contest_id'
      t.integer 'votes'
      t.timestamps
    end
  end

  def self.down
    drop_table :polls
  end
end
