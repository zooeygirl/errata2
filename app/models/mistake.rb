class Mistake < ActiveRecord::Base

has_and_belongs_to_many :sentences
has_and_belongs_to_many :practice_exercises
has_many :essays, :through => :sentences
has_many :links


enum category: {'Vocabulary': 0, 'Verb': 1, 'Adjectives + Adverbs': 2, 
'Linking Words': 3, 'Word Order': 4, 'Pronoun': 5,
'Sentence Structure': 6, 'Noun': 7, 'Determiner': 8, 'Collocation': 9, 'Punctuation': 10, 'Register': 11, 'Meaning': 12, 'Negation': 13, 'Function': 14, 'Sentence Pattern': 15, 'Commonly Confused Words': 16, 'Subordinate/Relative Clauses': 17, 'Questions': 18}


def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |mistake|
      csv << mistake.attributes.values_at(*column_names)
    end
  end
end









end
