class SentencesController < ApplicationController
	before_action :set_sentence, only: [:show, :edit, :update, :destroy]
  before_action :set_essay, except: [:edit, :update, :index]
  before_action :set_paragraph, except: [:edit, :update, :index]
 
  


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

def update_word_list
  
  word_list = @sentence.content.split(/\W+/)
  i = 0
      while i < word_list.count do
      word_list[i] = [i.to_s, word_list[i]] 
      i+=1
      end
  @sentence.update_attribute(:word_list, word_list)
  
end 

def index
    @sentences = Sentence.all
    respond_to do |format|
    format.html
    format.csv { send_data @sentences.to_csv }
    end
  
end


def show
  redirect_to essay_paragraph_path(@essay, @paragraph)
end






def update 
    update_word_list
    @essay = Essay.find(@sentence.essay_id)
    @paragraph = Paragraph.find(@sentence.paragraph_id)
    @sentence.update(sentence_params)  
    if @sentence.update(sentence_params)
    @sentence.mistake_ids.each do |mis|
      if @sentence.words_in_mistakes.where(mistake_id: mis).count == 0    
      @sentence.words_in_mistakes.create(mistake_id: mis, paragraph_id: @paragraph.id, essay_id: @essay.id, word_list: @sentence.word_list)
      end
    end
    end
      @essay = Essay.find(@sentence.essay_id)
      @paragraph = Paragraph.find(@sentence.paragraph_id)
      if current_user.role == "Student"
      redirect_to essay_paragraph_path(@essay, @paragraph), notice: 'Sentence was successfully updated.'
      elsif current_user.role == "Teacher"
      redirect_to edit_sentence_path(@sentence), notice: 'Sentence was successfully updated.'
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
      params.require(:sentence).permit(:id, :user_id, :content, :comment, :trackernum, :essay_id, :paragraph_id, vocabulary_errors:[], word_list:[], mistake_ids:[], teacher_comment_ids:[], words_in_mistakes_attributes:[:id, :sentence_id, :mistake_id, :_destroy])
    end
end