using System;
using System.Collections.Generic;
using System.Linq;

namespace StudentExercises
{
    class Program
    {
        static void Main(string[] args)
        {

            Exercise classesIntro = new Exercise()
            {
                Name = "Intro to Classes",
                Language = "C Sharp",
            };

            Exercise kennel = new Exercise()
            {
                Name = "Kennel",
                Language = "JavaScript",
            };

            Exercise dailyJournal = new Exercise()
            {
                Name = "Daily Journal",
                Language = "JavaScript",
            };

            Exercise chickenMonkey = new Exercise()
            {
                Name = "Chicken Monkey",
                Language = "JavaScript",
            };

            Cohort cohortOne = new Cohort()
            {
                Id = 1,
                Name = "Fall Cohort 2018"
            };

            Cohort cohortTwo = new Cohort()
            {
                Id = 2,
                Name = "Fall Cohort 2019"
            };

            Cohort cohortThree = new Cohort()
            {
                Id = 3,
                Name = "Spring Cohort 2020"
            };

            Student barry = new Student()
            {
                Id = 1,
                FirstName = "Scary",
                LastName = "Barry",
                Cohort = cohortThree
            };

            cohortThree.Students.Add(barry);

            Student sydney = new Student()
            {
                Id = 2,
                FirstName = "Sydney",
                LastName = "Wait",
                Cohort = cohortOne
            };
            cohortOne.Students.Add(sydney);

            Student daryl = new Student()
            {
                Id = 3,
                FirstName = "I Don't Know",
                LastName = "Daryl",
                Cohort = cohortTwo
            };
            cohortTwo.Students.Add(daryl);

            //Console.WriteLine(barry.Cohort.Id);
            Instructor tommy = new Instructor()
            {
                FirstName = "Tommy",
                LastName = "Spurlock",
                Specialty = "Pep talks",
                Cohort = cohortThree

            };

            Instructor jordan = new Instructor()
            {
                FirstName = "Jordan",
                LastName = "Castelloe",
                Specialty = "Animal Lover",
                Cohort = cohortThree
            };

            //Add instructors to cohort
            cohortThree.Instructors.AddRange(new List<Instructor>(){tommy, jordan});

            //Assign exercises

            tommy.AssignExercise(barry, chickenMonkey);
            jordan.AssignExercise(sydney,kennel);
            jordan.AssignExercise(sydney, dailyJournal);
            tommy.AssignExercise(barry, dailyJournal);
            tommy.AssignExercise(sydney, chickenMonkey);


            //Challenges
            List<Student> allStudents = new List<Student>(){barry, sydney, daryl};
            // allStudents.ForEach(student => Console.WriteLine($"{student.AssignedExercises}"));
            // Console.WriteLine();

            List<Exercise> allExercises = new List<Exercise>(){chickenMonkey, dailyJournal, kennel};

            List<Instructor> allInstructors = new List<Instructor>() {jordan, tommy};

            List<Cohort> allCohorts = new List<Cohort>() {cohortOne,cohortTwo,cohortThree};

            List<Exercise> allJavaScriptExercises = allExercises.Where(singleExercise => singleExercise.Language == "JavaScript").ToList();

            allJavaScriptExercises.ForEach(exercise => Console.WriteLine($"{exercise.Name} is a {exercise.Language} exercise."));

            List<Student> cohortThreeStudents = allStudents.Where(singleStudent => singleStudent.Cohort.Name == "Cohort Three").ToList();

            cohortThreeStudents.ForEach(student => Console.WriteLine($"{student.FirstName} {student.LastName} is a student in {student.Cohort}"));

            List<Instructor> cohortThreeInstructors = allInstructors.Where(singleInstructor => singleInstructor.Cohort.Name == "Cohort Three").ToList();

            cohortThreeInstructors.ForEach(instructor => Console.WriteLine($"{instructor.FirstName} {instructor.LastName} is an instructor in {instructor.Cohort}"));

            List<Student> studentsInAlphaOrder = allStudents.OrderBy(singleStudent => singleStudent.LastName).ToList();

            studentsInAlphaOrder.ForEach(student => Console.WriteLine($"List of all students in Alphabetical order by lastname: {student.LastName}, {student.FirstName}"));
            
             List<Student> lazyStudents = allStudents.Where(student => student.AssignedExercises.Count() == 0).ToList();
            lazyStudents.ForEach(student => Console.WriteLine($"{student.FirstName} {student.LastName} has no exercises assigned"));

            List<Student> mostAssignedExercises = allStudents.OrderByDescending(student => student.AssignedExercises.Count).ToList();
            
            var busiestStudent = mostAssignedExercises.Take(1);
            foreach (var name in busiestStudent){
                Console.WriteLine($"The busiest student is {name.FirstName} {name.LastName}");
            }

           
            // var cohortsAndTheirStudentCounts = from singleStudent in allStudents
            // group singleStudent by singleStudent.Cohort.Students into cohortReport
            // select new Dictionary<string,int>(){{cohortReport.Key, cohortReport.Count() } };

            var cohortsAndTheirStudentCounts = allStudents.GroupBy(student => student.Cohort.Name).ToList();
            
            cohortsAndTheirStudentCounts.ForEach(cohort => Console.WriteLine($"Cohort {cohort.Key} has {cohort.Count()} students."));
            Console.WriteLine();
            // Console.WriteLine("Welcome! What would you like to do?");
            // Console.WriteLine("1. See a report of which students are working on which exercises");
            // Console.WriteLine("2. Create a student");
            // Console.WriteLine("3. Exit");
            // string response = Console.ReadLine();
            // if (response == "1"){
            //     allExercises.ForEach(exercise => {
            //         Console.WriteLine(exercise.Name);
            //         Console.WriteLine("-------------");
            //         exercise.assignedStudents.ForEach(student => Console.WriteLine($"{student.FirstName} {student.LastName}"));
            //         Console.WriteLine();
            //     });
            // }else if (response =="2"){
            //     Console.WriteLine("Let's create a student!!");
            //     Console.WriteLine("What's the student's first name?");
            //     string firstNameInput = Console.ReadLine();
            //     Console.WriteLine("What's the student's last name?");
            //     string lastNameInput = Console.ReadLine();
                
            //     Console.WriteLine("What's the student's grade?");
            //     //instantiate a new student with the info the user entered
            //     Student userInputStudent = new Student(){
            //         FirstName = firstNameInput,
            //         LastName = lastNameInput,
            //     };
            // //try-catch block
            //     try {
            //         userInputStudent.Grade = Int32.Parse(Console.ReadLine());
            //     } catch (FormatException){
            //         Console.WriteLine("Please enter a number for the student's grade");
            //     }
             
            //     Console.WriteLine($"Your student's name is {userInputStudent.FirstName} {userInputStudent.LastName} and their grade is {userInputStudent.Grade}");

            //}
        }
    }
}
