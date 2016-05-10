class Correction < ActiveRecord::Base

belongs_to :essay
has_and_belongs_to_many :mistake

end
