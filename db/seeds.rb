
# adds seed data for cohorts, students, homework, teachers and projects. 
# checks to see if the relationships are functional (except for the projects_students join table)

# cohorts = Cohort.create([{ name: '24'}, { name: '25'}])
# students = Student.create([{ name: 'Humberto'}, { name: 'Heather'}, { name: 'Peter'}, { name: 'Marcel'}, { name: 'Justin'}, { name: 'Nick'}])
# Homework.create(name: 'assignment_1', student: students.first)
# teachers = Teacher.create([{ name: 'Justin', cohort_name: '24'}, { name: 'Nathan', cohort_name: '24'}, { name: 'NewGuy', cohort_name: '24'}])
# Project.create([{name: 'sex in airport bathrooms'}])

# Cohort.create({name: '97', archived: false})

# Cohort.create({name: '77', archived: false})
Homework.create([{hw_submission: "My dog ate my computer", skill: "Ruby", self_assessment: 2.5, student_id: 9, name: "rails testing" },{hw_submission: "This is my homework submission", skill: "Express", self_assessment: 1.5, student_id: 9, name: "express setyp" },{hw_submission: "My dog ate my computer", skill: "Ruby", self_assessment: 3.0, student_id: 9, name: "rails testing" },{hw_submission: "My dog ate my computer", skill: "Ruby", self_assessment: 2.5, student_id: 11, name: "rails testing" },{hw_submission: "Rails is the fucking worst", skill: "Ruby", self_assessment: 1.0, student_id: 11, name: "rails testing" }, {hw_submission: "I think I get it now!", skill: "Ruby", self_assessment: 4.5, student_id: 11, name: "rails testing" }])

# Attendance.create([{cohort_id: 1, student_id: 7, present: 1, date: '01-01-16'},{cohort_id: 1, student_id: 8, present: 1, date: '01-01-16'},{cohort_id: 1, student_id: 7, present: 1, date: '01-02-16'},{cohort_id: 1, student_id: 8, present: 1, date: '01-02-16'},{cohort_id: 1, student_id: 7, present: -1, date: '01-03-16'},{cohort_id: 1, student_id: 8, present: 1, date: '01-03-16'}])
