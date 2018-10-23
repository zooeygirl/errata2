class WordsInMistake < ActiveRecord::Base
	belongs_to :sentence
	belongs_to :essay
	belongs_to :paragraph


	serialize :mistake_words
end
