using System;
using System.Collections.Generic;

namespace StudentExercises
{
    class Instructor
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string SlackHandle { get; set; }
        public string Specialty { get; set; }

        public int CohortId { get; set; }
        public Cohort Cohort { get; set; }

        //public List<Exercise> AssignedExercises { get; set; } = new List<Exercise>();


        //Method that accepts a student and an exercise to the student's list of assigned exercises
        public void AssignExercise(Student assignedStudent, Exercise exerciseToAssign)
        {
            assignedStudent.AssignedExercises.Add(exerciseToAssign);
            exerciseToAssign.assignedStudents.Add(assignedStudent);
        }
    }

}

