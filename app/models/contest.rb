class Contest < ActiveRecord::Base
  belongs_to :region
  has_many :polls
  has_many :person
end
