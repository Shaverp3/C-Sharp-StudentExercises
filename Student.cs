using System;
using System.Collections.Generic;

namespace StudentExercises
{
    class Student
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string SlackHandle { get; set; }
        public int Grade {get; set;}
        public int CohortId { get; set; }
        public Cohort Cohort { get; set; }

//Create List here when Student will be assigned many Exercises
        public List<Exercise> AssignedExercises { get; set; } = new List<Exercise>();

        // public Student(string First, string Last, string Slack)
        // {
        //     FirstName = First;
        //     LastName = Last;
        //     SlackHandle = Slack;
        // }
    }
}

    



