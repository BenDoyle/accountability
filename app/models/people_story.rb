class PeopleStory < ActiveRecord::Base
  belongs_to :person
  belongs_to :story
end
