class CreatePeopleStories < ActiveRecord::Migration
  def self.up
    create_table :people_stories do |t|
      t.integer :person_id
      t.integer :story_id
      # moderation reference, or sucklike
      # t.moderation_id 
      t.timestamps
    end
  end

  def self.down
    drop_table :people_stories
  end
end
