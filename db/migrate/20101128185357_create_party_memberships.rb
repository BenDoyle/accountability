class CreatePartyMemberships < ActiveRecord::Migration
  def self.up
    create_table :party_memberships do |t|
      t.integer 'person_id'
      t.integer 'party_id'
      t.integer 'role_id'
      t.date 'start_date'
      t.date 'end_date'
      t.timestamps
    end
  end

  def self.down
    drop_table :party_memberships
  end
end
