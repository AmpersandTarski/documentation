## Hawaii

In this section you will learn the basic structure of information systems according to Ampersand. By studying a simple system, you will learn how Ampersand represents such systems.

We will study an information system called "Hawaii". The purpose of that system is to let students find out for which trips they qualify. In order to take a trip to \(for example\) Rome, you have to pass the courses "Latin" and "World Religions" first. In the same application, a teacher can register which courses are required for which trip. You can play with the application to see how it works.

Please [click here](http://52.174.4.78/RAP3/scripts/123456/generated/Script_1492691871_00491882/prototype/#/Overview) to try it. Play around a little bit to find out which courses, students and trips there are and try to see what happens if you add or remove information from the system.

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

POPULATION Destination CONTAINS  [ "Amsterdam" ]

INTERFACE Overview : '_SESSION'                     cRud
TABS [ Subjects     : V[SESSION*Subject]            cRuD
       COLS [ "Subject" : I                         cRud
            , "required for trip" : required        CRUD
            , "students that passed" : pass         CRUD
            ]
     , Destinations : V[SESSION*Destination]        cRuD
       COLS [ "Destination" : I                     cRud
            , "required subject" : required~        CRUD
            , "Qualifying students" : required\pass cRud
            ]
     , Students     : V[SESSION*Student]            cRuD
       COLS [ "Student" : I[Student]                cRud
            , "passed" : pass~                      CRUD
            , "Qualify for" : pass~/required~       cRud
            ]
     ]

ENDCONTEXT
```

During this part of the course, you will learn about the structure of an information system. You will also learn how this system has been defined in Ampersand.

## Assignment

Play with the information system and discuss what you see with your fellow students and your tutor. Afterwards, you must be able to explain how every detail in the source code of your information system relates to the operational system that you have been playing with.

