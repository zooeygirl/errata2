class Link < ActiveRecord::Base
	belongs_to :mistake

enum media_category: {'Grammar Explanation': 0, 'Practice Exercises': 1, 'Dictionary': 2, 'Concordancer': 3, 'Corpus': 4, 'Video': 5, 'List of Phrases': 6}




end
