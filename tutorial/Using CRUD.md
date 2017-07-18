# Interfaces
You can work with data in your information system only through an interface. Interfaces are the spectacles you need for viewing, changing, creating and deleting data.

```
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
```


