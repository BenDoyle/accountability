class Person < ActiveRecord::Base
  has_many :people_stories
  has_many :stories, :through => :people_stories
  has_many :party_memberships
  has_many :parties, :through => :party_memberships
  has_many :roles, :through => :party_memberships
  has_many :polls
  has_many :contests, :through => :polls
  
  def name 
    first_name + ' ' + last_name
  end
  def party_membership_at(time)
    self.party_memberships.select{|e| time.between?( (e.start_date or time), (e.end_date or time) ) }.first.party
  end
end
