class Region < ActiveRecord::Base
  has_many :contest
  has_many :people, :through => :contests
end
