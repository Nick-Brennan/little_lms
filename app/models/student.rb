class Student < ActiveRecord::Base
	has_and_belongs_to_many :projects
	has_many :homeworks
	has_many :attendances
	belongs_to :cohort
end
