class Paragraph < ActiveRecord::Base
	belongs_to :essay
	has_many :sentences, dependent: :destroy

	accepts_nested_attributes_for :sentences

end
