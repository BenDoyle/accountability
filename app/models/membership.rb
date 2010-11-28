class Membership < ActiveRecord::Base
  belongs_to :person
  belongs_to :organization
  belongs_to :role
end
