In this section we will make an Ampersand script that is based on an existing spreadsheet. This technique is useful for bottom-up design of an information system. This has many uses in practice, because people tend to administer a lot in spreadsheets for lack of proper information systems to support them. Ampersand has a facility that allows you to import existing .xlsx files with minimal changes. 

# Theory: tables vs. binary relations

We can consider Ampersand as a finite system of relations. Every relation is a set of pairs and each pair contains two atoms. Suppose we want to store that in a relational database. An obvious implementation would be to map every relation to a table. That yields a database filled with two-column tables. This gives rise to the following question: Can we store relations more efficiently?

This chapter studies ways to use database tables wider than two columns. The purpose is to get more efficient code by exploiting the strengths of relational databases. This translation must maintain the semantics of Ampersand in the eyes of its user. She may still perceive the world as a system of relations. All laws of relation algebra remain applicable in this world.

### Example

Let us look at an example to get a feeling for this translation. Consider the following table.

|  | firstname | lastname | birth |
| --- | --- | --- | --- |
| 1 | Abraham | Lincoln | February 12, 1809 |
| 2 | Barack | Obama | August 4, 1961 |
| 3 | Calvin | Coolidge | July 4, 1872 |
| 4 | Dwight | Eisenhower | October 14, 1890 |

Since Ampersand works with relations, it must represent this table as relations. Three relations can do the job in the following manner:

```
POPULATION firstname[President*Name] CONTAINS
  [ ("1", "Abraham")
  , ("2", "Barack")
  , ("3", "Calvin")
  , ("4", "Dwight")
  ]

POPULATION lastname[President*Surname] CONTAINS
  [ ("1", "Lincoln")
  , ("2", "Obama")
  , ("3", "Coolidge")
  , ("4", "Eisenhower")
  ]

POPULATION birth[President*Date] CONTAINS
  [ ("1", "February 12, 1809")
  , ("2", "August 4, 1961")
  , ("3", "July 4, 1872")
  , ("4", "October 14, 1890")
  ]
```

Notice that the column names in the table correspond with the relation names in Ampersand. In the table we call them "attributes". So it makes sense to say that a relation in Ampersand can correspond with an attribute in a table.

## Practice: how to prepare a spreadsheet

The population of the Hawaii-script might just as well be given in a spreadsheet. It looks like this:

| Subject | pass | required |
| :--- | :--- | :--- |
| \[Subject\] | \[Student\] | \[Destination\] |
| Surfing | Brown | Hawaii |
| Surfing | Conway |  |
| Latin | Brown | Rome |
| World Religions | Applegate |  |
| World Religions | Brown | Rome |

In many spreadsheets, it is sufficient to add two lines above each table to inform Ampersand about the relations that are populated. 

