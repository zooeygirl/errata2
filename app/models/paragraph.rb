class Paragraph < ActiveRecord::Base
	belongs_to :essay
	has_many :sentences, dependent: :destroy
	has_and_belongs_to_many :teacher_comments

	accepts_nested_attributes_for :sentences

end
