
class CohortController < ApplicationController
include CohortHelper

def show
	klass = Cohort.find(params[:id])
	@cohort = klass.students
	render :show
end

def data

	render :data
end

def attendance
	klass = Cohort.find(params[:id])
	@cohort = klass.students
	render :attendance
end

def homework
	render :homework
end



end
