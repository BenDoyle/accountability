class Story < ActiveRecord::Base
  has_many :people_stories
  has_many :people, :through => :people_stories
end
