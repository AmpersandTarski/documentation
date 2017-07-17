[](/interfaces.md)## Hawaii

In this section you will learn the basic structure of information systems according to Ampersand. By studying a simple system, you will learn how Ampersand represents such systems.

We will study an information system called "Hawaii". The purpose of that system is to let students find out for which trips they qualify. In order to take a trip to \(for example\) Rome, you have to pass the courses "Latin" and "World Religions" first. In the same application, a teacher can register which courses are required for which trip. You can play with the application to see how it works.

Please [click here](http://ampersand.tarski.nl/Hawaii) to try it. Play around a little bit to find out which courses, students and trips there are and try to see what happens if you add or remove information from the system.

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
       COLS [ "Student" : I[Student]                cRud
            , "passed" : pass~                      CRUD
            , "Qualify for" : pass~/required~       cRud
            , "registered" : attends                cRUd
            ]
     , Subjects     : V[SESSION*Subject]            cRuD
       COLS [ "Subject" : I                         cRud
            , "required for trip" : required        CRUD
            , "students that passed" : pass         CRUD
            ]
     , Destinations : V[SESSION*Destination]        cRuD
       COLS [ "Destination" : I                     cRud
            , "required subject" : required~        CRUD
            , "Qualifying students" : required\pass cRud
            , "registered" : attends~               cRUd
            ]
     ]

ENDCONTEXT
```

During this part of the course, you will learn about the structure of an information system. You will also learn how this system has been defined in Ampersand.

## Assignment

Play with the information system and discuss what you see with your fellow students and your tutor. For example:

* Suppose there are no requirements for going to `Amsterdam`. Is this the case in [the application](http://ampersand.tarski.nl/Hawaii)? If such requirements for `Amsterdam`exist, remove them. Which students qualify for going to that destination?
* Now register student `Brown` for going to `Rome`.
* Now register student `Applegate` for going to `Hawaii`.
* Now require `Dutch` for going to `Amsterdam`.

## What have you learned?

After finishing your assignment, you have learned:
* to explain how every detail in the source code of your information system relates to the operational system that you have been playing with;
* that a rule of the business, such as "A student who registers for a trip must have passed all subjects that are required for that trip." can be formalized in Ampersand.
* a business rule can be used to constrain data in a database.

## Want to learn more?
1. How does the [interface mechanism](/interfaces.md) work?
