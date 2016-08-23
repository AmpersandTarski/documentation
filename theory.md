# Theory

This chapter documents some of the theory behind Ampersand.

## Overview
An information system (IS) consists of the following components:
1. A persistent store, which is structured. Whether it is distributed or not, in the cloud, relational or not, is irrelevant. In Ampersand, you can define the structure of the persistent store in terms of relations and rules.
2. Data, living in the persistent store. This data can change over time. All data together at one moment in time is called the "state" of the information system at that moment. In Ampersand, the data exists  as pairs of atoms that kept in a relation.
3. Interfaces, which match the structure of the persistent store.

The following table compares the language used in the world of information systems with related worlds. It is compared with Ampersand, because we use Ampersand to design information systems. It is compared with the world of software, because Ampersand generates software. It is compared with the world of model theory [ref required], because the formal theory of Ampersand can be understood formally in model theory. 

| information system | Ampersand | software | model theory |
| -- | -- | -- | -- |
| rules | script | program | theory |
| data | population | state | model |
| formal statement | expression | condition | term |
| generator | generator | compiler |
| store | database | database |
| interface | interface | interface |





