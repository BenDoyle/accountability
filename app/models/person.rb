class Person < ActiveRecord::Base
  has_many :people_stories
  has_many :stories, :through => :people_stories
  has_many :memberships
  has_many :organizations, :through => :memberships
  has_many :roles, :through => :memberships
  has_many :contests
  has_many :regions, :through => :contests
  
  def name 
    first_name + ' ' + last_name
  end
end
