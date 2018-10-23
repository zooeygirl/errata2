class Grade < ActiveRecord::Base

belongs_to :essay
has_many :grade_elements, dependent: :destroy


accepts_nested_attributes_for :grade_elements

end
