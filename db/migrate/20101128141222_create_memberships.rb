class CreateMemberships < ActiveRecord::Migration
  def self.up
    create_table :memberships do |t|
      t.integer 'person_id'
      t.integer 'organization_id'
      t.integer 'role_id'
      t.date 'start_date'
      t.date 'end_date'
      t.timestamps
      t.timestamps
    end
  end

  def self.down
    drop_table :memberships
  end
end
