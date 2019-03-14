class Sentence < ActiveRecord::Base
	
	belongs_to :paragraph, dependent: :destroy
	belongs_to :essay
	belongs_to :user
	has_and_belongs_to_many :mistakes, -> { uniq }
	has_and_belongs_to_many :teacher_comments
	has_many :words_in_mistakes, dependent: :destroy

	serialize :word_list
	serialize :vocabulary_errors
	
	accepts_nested_attributes_for :words_in_mistakes, allow_destroy: true
	


def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << ["word_list", "mistake_ids", "mistake_words"]
    all.each do |sentence|
    	miswords = []
    	sentence.words_in_mistakes.each do |wim|
    		if wim.mistake_words != nil
	  			wimmiswords = []
	    		wim.mistake_words[0..wim.mistake_words.count-2].each do |mw|
	    			wimmiswords += [sentence.word_list[mw.to_i]]
	    		end
    			miswords += [wim.mistake_id, wimmiswords]
    		end
    	end

    	csv << [sentence.word_list, sentence.mistakes.ids, miswords]
       
    end
  end
end




	

end
