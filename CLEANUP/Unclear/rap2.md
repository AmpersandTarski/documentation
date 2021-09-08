This section introduces the tool you will use during the tutorial: RAP2. This tool stores Ampersand-scripts in which you can specify, analyze and build information systems. It runs in the cloud, so all you need is a browser and [click here](http://is.cs.ou.nl/rap2) to start using it.

## Identifying yourself

RAP2 keeps your work together under a student number. So you have to log in in the system under your own student number or e-mail address

## Making your first Ampersand script

You can start making your very first own Ampersand script in the text area of RAP2. You might for example cut the "Hawaii" script from this page and paste it in the editor. If you scroll downwards, you will get controls to compile and use it. Note that Ampersand is complicated software, so please have a little patience after pushing one of its buttons.

![](/assets/RAP2 screen.png)

## Script "Hawaii"

```
CONTEXT Hawaii IN ENGLISH

PATTERN HAWAII
PURPOSE CONTEXT Hawaii
{+Once in their school career, students get to go on a field trip abroad.
However, the organizer of the field trip may require that you have completed specific courses.
This application gives overviews of students and the trips for which they qualify.
The application illustrates the use of residuals.
-}

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
ENDPATTERN

INTERFACE Overview(required,pass) : I[ONE]
BOX  [ Subjects     : V[ONE*Subject]            
       BOX  [ "Subject" : I                         
            , "required for trip" : required        
            , "students that passed" : pass         
            ]
     , Destinations : V[ONE*Destination]        
       BOX  [ "Destination" : I                     
            , "required subject" : required~        
            , "Qualifying students" : required\pass 
            ]
     , Students     : V[ONE*Student]            
       BOX  [ "Student" : I[Student]                
            , "passed" : pass~                      
            , "Qualify for" : (required\pass)~       
            ]
     ]

ENDCONTEXT
```

## Assignment

1. Compile the script "Hawaii" in RAP2 and run it. The tutor will show you which sequence of clicks will make it work. In the remainder of this course you will compile and run your own scripts.
2. The tutor will explain how the service definition in the script relates to the application you have built. At the same time you will learn about the ;-operator \(aka "composition-operator"\). Add one line to the script. It gives an overview of all students that have completed at least one subject required for a particular destination. Compile and run it and compare your result to the following screenshot. It contains the result you should achieve. Note the new field "busy" under the heading "Destinations". Also explain why it produces a result that differs from "Qualifying students".

![](/assets/busy.png)

Extra:

Add a field to "Student", that says for which destinations that student has one or more required subjects. Compile and run your change to verify the result.

