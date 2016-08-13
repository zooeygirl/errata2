class PeQuestion < ActiveRecord::Base
	belongs_to :practice_exercise
	has_many :pe_answers


	accepts_nested_attributes_for :pe_answers
end
