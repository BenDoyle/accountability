class Organization < ActiveRecord::Base
  has_many :memberships
  has_many :people, :through => :memberships
  has_many :roles, :through => :memberships
end
