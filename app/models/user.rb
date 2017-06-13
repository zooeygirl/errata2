class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :essays, dependent: :destroy
  has_many :classrooms, dependent: :destroy
  has_many :evaluations, dependent: :destroy
  has_many :teacher_comments, dependent: :destroy
  has_many :practice_exercises
  has_many :sentences, dependent: :destroy
  has_many :t_answers, dependent: :destroy
  has_many :training_sets, dependent: :destroy

  enum role: {Teacher: 0, Student: 1}



  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :Student
  end



end
