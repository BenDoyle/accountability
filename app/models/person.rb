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
  # def current_party
  #   memberships.sort_by{|a,b|a. }
  # end
end
