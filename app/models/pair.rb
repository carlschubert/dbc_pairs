class Pair < ActiveRecord::Base
  belongs_to :cohort
  belongs_to :first_student, class_name: "Student"
  belongs_to :second_student, class_name: "Student"

  validates :first_student, uniqueness: true

  validate :validate_different_students

  def validate_different_students
    if first_student_id == second_student_id
      errors.add(:first_student, "First and Second Student in pair cannot be the same")
    end
  end

end
