<<<<<<< HEAD
class Training < ActiveRecord::Base

belongs_to :mistake, dependent: :destroy
has_many :t_answers, dependent: :destroy

has_and_belongs_to_many :training_sets








end
=======
class Training < ActiveRecord::Base

belongs_to :mistake
has_many :t_answers, dependent: :destroy

has_and_belongs_to_many :training_sets








end
>>>>>>> fc43d6ed5e3286748e0fc862c39bcb2746308c94
