class Evaluation < ActiveRecord::Base

has_many :criteria
belongs_to :user


end
