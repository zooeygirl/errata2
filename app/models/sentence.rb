class Sentence < ActiveRecord::Base
	
	belongs_to :paragraph, dependent: :destroy
	belongs_to :essay
	has_and_belongs_to_many :mistakes
	has_and_belongs_to_many :teacher_comments
	has_many :words_in_mistakes, dependent: :destroy

	serialize :word_list
	serialize :vocabulary_errors
	
	accepts_nested_attributes_for :words_in_mistakes
	validates_associated :words_in_mistakes

	

end
