# The Population statement

## Semantics
There are two ways to populate a concept with atoms: 
* The POPULATION statement in the adl-file
* The INCLUDE statement to include an xlsx-file

The first method is laborious, so when you intend to change the population several times, the xlsx-method is easier. There is a bit of a learning curve, though; the required format for the xlsx-file is explained in the [excelimporter](../prototypes/extensions/excelimporter.md).

## Syntax
You can define atoms separately and you can define the pairs in a relation. Both methods result in added population for each concept. 

```
POPULATION Tree CONTAINS
	[ 
      ("Oak")
	, ("Birch")
    , ("Willow")
	]  
``` 

```
POPULATION personBank[Person*Bank] CONTAINS
	[ 
      ("John", "ING")
	, ("Jane", "TRIODOS")
	]   
```
The list of pairs is a comma-separated list between square brackets. Pairs are comma-separated pairs between round brackets. Each atom is enclosed in double quotes.
