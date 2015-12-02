Rails.application.routes.draw do

  root to: "welcome#index"
  get 'cohort/:id/show', to: "cohort#show"
  get 'cohort/:id/data', to: "cohort#data"
  get 'cohort/:id/attendance', to: "cohort#attendance"
  get 'cohort/:id/homework/:hid/show', to: "cohort#homework"
  get 'student/:id/show', to: "student#show"
  get 'student/:id/comp', to: "student#comprehension"
  get 'student/:id/projects', to: "student#projects"
  post 'cohort/:id/attendance/:sid', to: "cohort#attendance_log"

end
