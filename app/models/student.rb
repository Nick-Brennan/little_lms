class Student < ActiveRecord::Base
	has_and_belongs_to_many :projects
	has_many :homeworks
	belongs_to :cohort
end
