class Attendance < ActiveRecord::Base
	belongs_to :student
	belongs_to :cohort
end
