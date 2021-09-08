# Hawaii

In this section you will learn the basic structure of information systems according to Ampersand. By studying a simple system, you will learn how Ampersand represents such systems.

We will study an information system called "Hawaii". The purpose of that system is to let students find out for which trips they qualify. In order to take a trip to \(for example\) Rome, you have to pass the courses "Latin" and "World Religions" first. In the same application, a teacher can register which courses are required for which trip. You can play with the application to see how it works.

Please [click here](http://ampersand.tarski.nl/Hawaii) to try it. The next click is on the button "overview" \(the top of the page\) and then you can browse through the data in this system. Find out which courses, students and trips there are and try to see what happens if you add or remove information from the system. You can use this assignment as a guide:

## Assignment

* Who are the three students and what are the courses \(subjects\) they passed?
  * Note that this information is visible in all three tabs, but organized differently.
* Are there required subjects for going to `Amsterdam?`
  * Add, in the tab destinations, the subject "Dutch language" for Amsterdam. The system sees that the subject is unknown, and provides a green plus-sign to add it.
  * Don't forget to press "Save" after each change you have made.
  * Note that immediately the students qualified for Amsterdam change.
* Now register student `Brown` for going to `Rome`.
* Now register student `Applegate` for going to `Hawaii`.
  * This will trigger a message because this student does not qualify.
  * Click on the message to see details.
  * Look-up in the code below where this message is defined \(you don't have to understand the syntax\).
  * Click cancel.
* Note the three icons on the top-right of the screen and click on the middle icon \(two arrows\).
  * Click on 'Reinstall database'
  * An "are-you-sure?" screen comes up, click on the big red button and wait for it to turn green.
  * Click on 'overview' and the initial data is back.
  * Note in the code below, where the initial data is defined.
* Compare the code-part called INTERFACE and compare it with the screen. Note which parts you recognize. The syntax of the code will be discussed in the course.

This information system was built by the following code:

```
CONTEXT Hawaii IN ENGLISH
PURPOSE CONTEXT Hawaii
{+Once in their school career, students get to go on a field trip abroad.
However, the organizer of the field trip may require that you have completed specific courses.
This application gives overviews of students and the trips for which they qualify.
The application illustrates the use of residuals.
+}

RELATION required[Subject*Destination]
MEANING "A subject that you must have passed to qualify for the school trip to a destination"

POPULATION required CONTAINS
   [ ("Surfing", "Hawaii")
   ; ("Latin", "Rome")
   ; ("World Religions", "Rome")
   ]

RELATION pass[Subject*Student]
MEANING "The subjects that have been passed by specific students"

POPULATION pass CONTAINS
   [ ("Surfing", "Brown")
   ; ("Surfing", "Conway")
   ; ("Latin", "Brown")
   ; ("World Religions", "Applegate")
   ; ("World Religions", "Brown")
   ]

RELATION attends[Student*Destination]
--  attends;required |- pass
RULE attends |- pass~/required~
MEANING "A student who registers for a trip must have passed all subjects that are required for that trip."
MESSAGE "Attempt to register student(s) for a trip without the proper qualification."
VIOLATION (TXT "Student ", SRC I, TXT " cannot go to ", TGT I, TXT " without passing ", TGT required~)

POPULATION Destination CONTAINS  [ "Amsterdam" ]

INTERFACE Overview : '_SESSION'                     cRud
TABS [ Students     : V[SESSION*Student]            cRuD
       BOX <TABLE>
            [ "Student" : I[Student]                cRud
            , "passed" : pass~                      CRUD
            , "Qualify for" : pass~/required~       cRud
            , "registered" : attends                cRUd
            ]
     , Subjects     : V[SESSION*Subject]            cRuD
       BOX <TABLE>
            [ "Subject" : I                         cRud
            , "required for trip" : required        CRUD
            , "students that passed" : pass         CRUD
            ]
     , Destinations : V[SESSION*Destination]        cRuD
       BOX <TABLE>
            [ "Destination" : I                     cRud
            , "required subject" : required~        CRUD
            , "Qualifying students" : required\pass cRud
            , "registered" : attends~               cRUd
            ]
     ]

ENDCONTEXT
```

During this part of the course, you will learn about the structure of an information system. You will also learn how this system has been defined in Ampersand.

## What have you learned?

After finishing your assignment, you have learned:

* to recognize details in the source code of your information system and relate them to the operational system that you have been playing with;
* that a rule of the business, such as "A student who registers for a trip must have passed all subjects that are required for that trip." can be formalized in Ampersand.
* that such a business rule can be used to constrain data in a database.

## Want to learn more?

1. How does the [service mechanism](/syntax/interface.md) work?
2. How can I upload [bulk data](/tutorial/data-in-spreadsheets.md) from spreadsheets into my application?



