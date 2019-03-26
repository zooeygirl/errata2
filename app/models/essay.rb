class Essay < ActiveRecord::Base

belongs_to :user
belongs_to :assignment
has_many :sentences, :through => :paragraphs
accepts_nested_attributes_for :sentences
has_many :mistakes, :through => :sentences, -> { uniq }

has_many :paragraphs, dependent: :destroy
accepts_nested_attributes_for :paragraphs

has_many :words_in_mistakes, dependent: :destroy
accepts_nested_attributes_for :words_in_mistakes, allow_destroy: true
has_one :grade, dependent: :destroy
has_many :grade_elements
accepts_nested_attributes_for :grade_elements
has_many :training_sets, dependent: :destroy



accepts_nested_attributes_for :mistakes
 



enum essay_status: {'In progress': 0, 'Waiting for feedback': 1, 'Feedback': 2 }




end
