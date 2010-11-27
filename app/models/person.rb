class Person < ActiveRecord::Base
  has_many :people_stories
  has_many :stories, :through => :people_stories

  def name 
    first_name + ' ' + last_name
  end
end
