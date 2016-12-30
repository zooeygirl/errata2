class WordsInMistakesController < ApplicationController

  before_action :set_sentence
  before_action :set_paragraph
  before_action :set_essay
  before_action :set_words_in_mistake, only: [:show, :edit, :update, :destroy]

def new
	@words_in_mistake = WordsInMistake.new

end

def create
  @words_in_mistake = @sentence.words_in_mistakes.create(words_in_mistake_params) 
  @words_in_mistake.sentence_id = @sentence.id
  @words_in_mistake.paragraph_id = @paragraph.id
  @words_in_mistake.essay_id = @essay.id
    respond_to do |format|
      if @words_in_mistake.save
      format.html {redirect_to essay_paragraph_path(@essay, @paragraph)}
      format.js
      end
    end
end



def edit
   @words_in_mistakes = WordsInMistake.find(params[:id])

end


def show
 
end

def index
  @words_in_mistakes = WordsInMistake.all
end



def update
  @words_in_mistake.update(words_in_mistake_params)
   
   if @words_in_mistake.update(words_in_mistake_params)
       redirect_to essay_paragraph_path(@essay, @paragraph) , notice: 'WIM was successfully updated.'
    end
end

 def destroy 
    @sentence.update(mistake_ids: @sentence.mistake_ids - [@words_in_mistake.mistake_id])
    @words_in_mistake.destroy

    respond_to do |format|
      format.html { redirect_to essay_paragraph_path(@essay, @paragraph), notice: 'WIM was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end




private
   

    def set_words_in_mistake
      @words_in_mistake = WordsInMistake.find(params[:id])
    end

    def set_sentence
    	@sentence = Sentence.find(params[:sentence_id])
    end

     def set_essay
      @essay = Essay.find(params[:essay_id])
    end

     def set_paragraph
      @paragraph = Paragraph.find(params[:paragraph_id])
    end
    

   def words_in_mistake_params
      params.require(:words_in_mistake).permit(:sentence_id, :essay_id, :paragraph_id, :mistake_id, mistake_words:[])
    end
end