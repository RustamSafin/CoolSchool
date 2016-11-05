class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :full_name, presence: true

  has_many :stud_lessons, :class_name => "Lesson", :foreign_key => :student_id
  has_many :teach_lessons, :class_name => "Lesson", :foreign_key => :teacher_id
end

