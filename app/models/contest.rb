class Contest < ActiveRecord::Base
  belongs_to :region
  belongs_to :person
end
