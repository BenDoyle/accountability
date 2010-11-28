class Party < ActiveRecord::Base
  has_many :party_memberships
  has_many :people, :through => :party_memberships
  has_many :roles, :through => :party_memberships
end
