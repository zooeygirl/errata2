class Criterium < ActiveRecord::Base

belongs_to :evaluation

enum level: {'Essay': 0, 'Introduction': 1, 'Body Paragraphs': 2, 'Conclusion': 3, 'All Paragraphs': 4 }

end
