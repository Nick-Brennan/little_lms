
# adds seed data for cohorts, students, homework, teachers and projects. 
# checks to see if the relationships are functional (except for the projects_students join table)

cohorts = Cohort.create([{ name: '24'}, { name: '25'}])
students = Student.create([{ name: 'Humberto'}, { name: 'Heather'}, { name: 'Peter'}, { name: 'Marcel'}, { name: 'Justin'}, { name: 'Nick'}])
Homework.create(name: 'assignment_1', student: students.first)
teachers = Teacher.create([{ name: 'Justin', cohort_name: '24'}, { name: 'Nathan', cohort_name: '24'}, { name: 'NewGuy', cohort_name: '24'}])
Project.create([{name: 'sex in airport bathrooms'}])



