# Data in spreadsheets

In this section we will make an Ampersand script that is based on an existing spreadsheet. This technique is useful for bottom-up design of an information system. This has many uses in practice, because people tend to administer a lot in spreadsheets for lack of proper information systems to support them. Ampersand has a facility that allows you to import existing .xlsx files with minimal changes.

## Theory: tables vs. binary relations

We can consider Ampersand as a finite system of relations. Every relation is a set of pairs and each pair contains two atoms. However, in the real world we also store information in wider tables, as we do in spreadsheets and relational databases. Here is the trick. If we have two pairs that share the same left atom, e.g. \(1, Abraham\) and \(1, Lincoln\), we can put them in the same row. Using the same trick, we can interpret a row in a spreadsheet as a number of pairs.

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

In theory, the population of the Hawaii-script might just as well be given in a spreadsheet. This works in practice too. It looks like this:

| Subject | pass | required |
| :--- | :--- | :--- |
| \[Subject\] | \[Student\] | \[Destination\] |
| Surfing | Brown | Hawaii |
| Surfing | Conway |  |
| Latin | Brown | Rome |
| World Religions | Applegate |  |
| World Religions | Brown | Rome |

In many spreadsheets, it is sufficient to add two lines above each table to inform Ampersand about the relations that are populated.

## Assignment

Make a population of your own for the Hawaii-script and put it in a .xlsx spreadsheet. Upload that population in the [Hawaii-application](http://52.174.4.78/Trips/#/Overview) and play around with the results. The Excel import button is located on the right in the application's menu bar.![](/assets/Excel upload button.png)

