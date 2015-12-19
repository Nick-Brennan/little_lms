Rails.application.routes.draw do

  devise_for :teachers
  root to: "welcome#index"

  get 'cohort', to: "cohort#index", as:"cohort"
  get 'cohort/:id/show', to: "cohort#show", as: "cohort_show"
  get 'cohort/:id/data', to: "cohort#data", as: "cohor_data"
  get 'cohort/:id/attendance', to: "cohort#attendance" , as: "cohort_att"
  get 'cohort/:id/homework/:hid/show', to: "cohort#homework", as: "cohort_hw"
  get 'student/:id/show', to: "student#show"
  get 'student/:id/comp', to: "student#comprehension"
  get 'student/:id/projects', to: "student#projects"
  post 'cohort/:id/attendance/:sid', to: "cohort#attendance_log"
  post 'cohort/new', to: "cohort#new"
  get 'cohort/:id/students/show', to: "cohort#studentsShow"
  post 'cohort/:id/student/new', to: "student#new"
end
