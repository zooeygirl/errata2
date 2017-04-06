class WordsInMistakesController < ApplicationController

  before_action :set_sentence, only: [:show, :edit, :destroy]
  before_action :set_paragraph, only: [:show, :edit, :destroy]
  before_action :set_essay, only: [:show, :edit, :destroy]
  before_action :set_words_in_mistake, only: [:show, :edit, :update, :destroy]

def new
	@words_in_mistake = WordsInMistake.new

end

def create
  @words_in_mistake = WordsInMistake.create(words_in_mistake_params) 
 
    
      if @words_in_mistake.save
      respond_to do |format|
      format.html {redirect_to essay_paragraph_path(Essay.find(@words_in_mistake.essay_id), Paragraph.find(@words_in_mistake.paragraph.id))}
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
        respond_to do |format|
          format.html {redirect_to :back , notice: 'WIM was successfully updated.'}
          format.js
        end  
    end
end

 def destroy 
    @sentence.update(mistake_ids: @sentence.mistake_ids - [@words_in_mistake.mistake_id])
    @words_in_mistake.destroy

    respond_to do |format|
      format.html { redirect_to :back, notice: 'WIM was successfully destroyed.' }
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
      params.require(:words_in_mistake).permit(:id, :sentence_id, :essay_id, :paragraph_id, :correction_status, :mistake_id, :_destroy, mistake_words:[])
    end
end