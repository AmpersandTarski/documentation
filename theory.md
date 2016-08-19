# Theory

This chapter documents some of the theory behind Ampersand.

## Overview
An information system consists of the following components:
1. A persistent store, which is structured. Whether it is distributed or not, in the cloud, relational or not, is irrelevant. In Ampersand, you can define the structure of the persistent store in terms of relations and rules.
2. Data, living in the persistent store. This data can change over time. All data together at one moment in time is called the "state" of the information system at that moment. In Ampersand, the data exists  as pairs of atoms that kept in a relation.
3. Interfaces, which match the structure of the persistent store.


| model theory | Ampersand | Software | Database |
| -- | -- | -- | -- |
| theory | script | program | -- |
| model | population | data | data |
| -- | generator | compiler | -- |
| term | expression | condition | query |





