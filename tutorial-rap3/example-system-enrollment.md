# Example system: Enrollment

In this section you will learn the basic structure of information systems according to Ampersand. By studying a simple system, you will learn how Ampersand represents such systems.

We will study an information system called "Enrollment". The purpose of that system is to enroll students for modules. Student can enroll \(or be enrolled\) for any module that is part of the course they take.

Try it out on an Ampersand implementation. Click on the link, and then click on the icon "Overview" in the top-left of the screen. The application will start. Browse through the data and change things. Find out which courses, students and modules there are and try to see what happens if you add or remove information from the system. You can use this assignment as a guide:

## Assignment

* Who are the three students and what are the courses they they take?
* Is there a module `HRM`?
  * Add, in the tab Course, the module HRM to the Management course. The system sees that the subject is unknown, and provides a green plus-sign to add it.
  * Each change will be saved automatically.
  * Note that this change is also visible in the tab Modules.
* Now enroll student `John` for the module `Business Rules`. You can do this either in the tab Students or the tab Modules. We will later see why this is the case.
* Now enroll student `Peter` for the module `Business Rules`.
  * This will trigger a message because this student does not take the course Business IT.
  * Click on the message to see details.
  * Look-up in the code below where this message is defined. It is the line that starts with `RULE`. You don't have to understand the syntax at this point.
  * Click cancel.
* Now remove the course `Business IT`from`Susan`in  the tab Students. 
  * This also will trigger a message because each student must be taking at least one course.
  * Look up in the code the definition of the `RELATION takes`. The keyword `[TOT]` is responsible for this message.
  * Click cancel.
* Note the three icons on the top-right of the screen and click on the middle icon \(two arrows\).
  * Click on 'Reinstall database'
  * The Installer screen comes up. Click on the big red button and wait for it to turn green.
  * Click on 'overview' and the initial data is back.
  * Have a look at the code below, to find where the initial data is defined.
* Have a look at the code-part at the end called INTERFACE and compare it with the screen. Note which parts you recognize. The syntax of the code will be discussed in the course.

This information system was built by the following code:

```text
CONTEXT Enrollment IN DUTCH
PURPOSE CONTEXT Enrollment
{+ A complete course consists of several modules.
Students of a course can enroll for any module that is part of the course.
+}

PATTERN Courses
-- The concepts
CONCEPT Student "Someone who wants to study at this institute"
CONCEPT Course "A complete course that prepares for a diploma"
CONCEPT Module "An educational entity with a single exam"

-- The relations and the initial population
RELATION takes [Student*Course] [TOT]
MEANING "A student takes a complete course"

POPULATION takes CONTAINS
   [ ("Peter", "Management")
   ; ("Susan", "Business IT")
   ; ("John", "Business IT")
   ]

RELATION isPartOf [Module*Course]
MEANING "A module part of a complete course"

POPULATION isPartOf CONTAINS
   [ ("Finance", "Management")
   ; ("Business Rules", "Business IT")
   ; ("Business Analytics", "Business IT")
   ; ("IT-Governance", "Business IT")
   ; ("IT-Governance", "Management")
   ]

RELATION isEnrolledFor [Student*Module]
MEANING "Students enroll for each module in the course separately"

-- The one rule in this model
RULE ModuleEnrollment: isEnrolledFor |- takes;isPartOf~
MEANING "A student can enroll for any module that is part of the course the student takes"
MESSAGE "Attempt to enroll student(s) for a module that is not part of the student's course."
VIOLATION (TXT "Student ", SRC I, TXT " enrolled for the module ", TGT I, TXT " which is not part of the course ", SRC I[Student];takes)
ENDPATTERN

INTERFACE Overview : "_SESSION"                 cRud
TABS [ Students     : V[SESSION*Student]        cRuD
       COLS [ "Student" : I[Student]            CRUD 
            , "Enrolled for" : isEnrolledFor    cRUD
            , "Course" : takes                  CRUD 
            ]
     , Course     : V[SESSION*Course]           cRuD
       COLS [ "Course" : I                      cRud
            , "Modules" : isPartOf~             CRUD
            ]
     , Modules : V[SESSION*Module]              cRud
       COLS [ "Modules" : I                     cRuD
            , "Course" : isPartOf               cRud
            , "Students" : isEnrolledFor~       CRUD
            ]
     ]

ENDCONTEXT
```

During this part of the course, you will learn about the structure of an information system. You will also learn how this system has been defined in Ampersand.

## What have you learned?

After finishing your assignment, you have learned:

* to recognize details in the source code of your information system and relate them to the operational system that you have been playing with;
* that a rule of the business, such as "A student can only enroll for a module that is in the course the student takes" can be formalized in Ampersand.
* that such a business rule can be used to constrain data in a database.

## Want to learn more?

1. How can I create my own information system in RAP3? Go to [Your tool: RAP3](your-tool-rap3.md).
2. What is the conceptual model behind an Amersand model? Go to [Conceptual Model: Enrollment.](conceptual-model-enrollment.md)
3. How can I upload [bulk data](https://github.com/ampersandtarski/documentation/tree/662a3e7bdf67bf950cfc029e4c51efc919c0bf53/tutorial/data-in-spreadsheets.md) from spreadsheets into my application?

