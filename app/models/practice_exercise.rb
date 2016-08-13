class PracticeExercise < ActiveRecord::Base
	belongs_to :user
	has_many :pe_questions
	has_many :pe_answers
	has_and_belongs_to_many :classrooms

	accepts_nested_attributes_for :pe_questions
	accepts_nested_attributes_for :pe_answers
end
