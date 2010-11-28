class Membership < ActiveRecord::Base
  belongs_to :person
  belongs_to :party
  belongs_to :role
end
