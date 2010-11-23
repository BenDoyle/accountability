class CreatePeopleStories < ActiveRecord::Migration
  def self.up
    create_table :people_stories do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :people_stories
  end
end
