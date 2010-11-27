class Story < ActiveRecord::Base
  has_many :people_stories
  has_many :people, :through => :people_stories
  belongs_to :source
end
