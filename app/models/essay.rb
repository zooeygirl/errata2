class Essay < ActiveRecord::Base

belongs_to :user
belongs_to :assignment
has_many :sentences, dependent: :destroy
accepts_nested_attributes_for :sentences
has_many :mistakes, :through => :sentences
has_many :paragraphs, dependent: :destroy
accepts_nested_attributes_for :paragraphs
has_many :words_in_mistakes, :through => :sentences, dependent: :destroy
accepts_nested_attributes_for :words_in_mistakes
has_one :grade, dependent: :destroy
has_many :grade_elements
accepts_nested_attributes_for :grade_elements


serialize :paragraph_demarcation, Array

accepts_nested_attributes_for :mistakes
 



enum essay_status: {'In progress': 0, 'Waiting for feedback': 1, 'Feedback': 2 }


end
