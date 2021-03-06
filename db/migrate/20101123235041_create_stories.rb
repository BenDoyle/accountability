class CreateStories < ActiveRecord::Migration
  def self.up
    create_table :stories do |t|
      t.integer :source_id
      t.string :title
      t.string :url
      t.text   :content
      t.timestamps
    end
  end

  def self.down
    drop_table :stories
  end
end
