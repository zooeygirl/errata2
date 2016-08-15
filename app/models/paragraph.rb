class Paragraph < ActiveRecord::Base
	belongs_to :essay
	has_many :sentences

	accepts_nested_attributes_for :sentences

end
