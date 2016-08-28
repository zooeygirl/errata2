class TeacherComment < ActiveRecord::Base
	belongs_to :user
	has_and_belongs_to_many :sentences
	has_and_belongs_to_many :paragraphs
end
