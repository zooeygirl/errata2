class Classroom < ActiveRecord::Base
	belongs_to :user
	has_many :assignments, dependent: :destroy
	has_and_belongs_to_many :practice_exercises

end
