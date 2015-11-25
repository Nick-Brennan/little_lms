class Student < ActiveRecord::Base
	has_many :homeworks
	belongs_to :cohort
end
