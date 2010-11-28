class Role < ActiveRecord::Base
  has_many :party_memberships
  has_many :people, :through => :party_memberships
  has_many :organizations, :through => :party_memberships
end
