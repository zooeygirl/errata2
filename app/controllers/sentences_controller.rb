class SentencesController < ApplicationController
	before_action :set_sentence, only: [:show, :edit, :update, :destroy]
  before_action :set_essay
  before_action :set_paragraph
 
  


def new
	@sentence = Sentence.new 
end

def create
  @sentence = @paragraph.sentences.create(sentence_params) 
  @sentence.essay_id = @essay.id
  @sentence.paragraph_id = @paragraph.id
  if @sentence.save
    
  end
end

def edit
  
end


def show
  redirect_to essay_paragraph_path(@essay, @paragraph)
end


def index
	 @sentences = Sentence.all
end

def update 
    
    @sentence.update(sentence_params)  
    if @sentence.update(sentence_params)
    @sentence.mistake_ids.each do |mis|
      if @sentence.words_in_mistakes.where(mistake_id: mis).count == 0    
      @sentence.words_in_mistakes.create(mistake_id: mis, paragraph_id: @paragraph.id, essay_id: @essay.id)
      end
    end
    respond_to do |format|
      format.html {redirect_to essay_paragraph_path(@essay, @paragraph), notice: 'Sentence was successfully updated.'}
      format.js
    end
end




 private
    # Use callbacks to share common setup or constraints between actions.
    def set_sentence
      @sentence = Sentence.find(params[:id])
    end

    def set_essay
    	@essay = Essay.find(params[:essay_id])
    end

     def set_paragraph
      @paragraph = Paragraph.find(params[:paragraph_id])
    end
   
    def set_sentence_array
      @sentence_array = Scalpel.cut(@essay.body)
    end

   

   

    # Never trust parameters from the scary internet, only allow the white list through.
    def sentence_params
      params.require(:sentence).permit(:content, :comment, :essay_id, :paragraph_id, vocabulary_errors:[], word_list:[], mistake_ids:[], teacher_comment_ids:[])
    end
end