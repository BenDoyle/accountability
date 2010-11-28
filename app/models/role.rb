class Role < ActiveRecord::Base
  has_many :memberships
  has_many :people, :through => :memberships
  has_many :organizations, :through => :memberships
end
