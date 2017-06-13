class Training < ActiveRecord::Base

belongs_to :mistake, dependent: :destroy
has_many :t_answers, dependent: :destroy

has_and_belongs_to_many :training_sets








end
