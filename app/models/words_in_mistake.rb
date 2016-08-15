class WordsInMistake < ActiveRecord::Base
	belongs_to :sentence
	belongs_to :essay

	serialize :mistake_words
end
