class Mistake < ActiveRecord::Base

has_many :corrections
has_many :essays, :through => :correction

end
