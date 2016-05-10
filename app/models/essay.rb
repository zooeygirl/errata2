class Essay < ActiveRecord::Base


has_many :corrections,  dependent: :destroy
has_many :mistakes, :through => :corrections

end
