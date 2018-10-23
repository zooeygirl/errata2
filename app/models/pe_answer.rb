class PeAnswer < ActiveRecord::Base
	belongs_to :pe_question
	belongs_to :practice_exercise



enum appraisal: {'Keep Trying': 0, 'Improvement, but there are still problems': 1, 'Perfect Sentence': 2, 'Waiting for feedback': 3}


end
