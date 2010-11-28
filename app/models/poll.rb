class Poll < ActiveRecord::Base
  belongs_to :region
  belongs_to :person
  belongs_to :contest
end
