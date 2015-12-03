class Cohort < ActiveRecord::Base
	has_many :students
	has_many :teachers
	has_many :attendances
end
