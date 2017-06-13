class TrainingSet < ActiveRecord::Base

belongs_to :essay
belongs_to :user

has_and_belongs_to_many :trainings
has_many :t_answers
accepts_nested_attributes_for :t_answers
accepts_nested_attributes_for :trainings


end
