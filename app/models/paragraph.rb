class Paragraph < ActiveRecord::Base
	belongs_to :essay
	has_many :sentences, dependent: :destroy
	has_many :words_in_mistakes
	validates_associated :words_in_mistakes
	
	has_and_belongs_to_many :teacher_comments

	accepts_nested_attributes_for :sentences
	accepts_nested_attributes_for :words_in_mistakes, allow_destroy: true

end
