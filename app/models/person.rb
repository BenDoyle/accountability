class Person < ActiveRecord::Base
  has_many :people_stories
  has_many :stories, :through => :people_stories
end
