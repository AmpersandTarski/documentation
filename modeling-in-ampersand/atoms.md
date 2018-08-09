# Atoms

## Purpose

An atom represents a real-world thing in an information system context.

## Description

An atom refers to an individual object in the real world, such as the student called "Caroline". But what if there are three different Carolines? What does it mean to say: "Caroline has passed the exam for Spanish Medieval Literature."? This sentence might be true for one Caroline, but false for the others. Clearly, to avoid ambiguous sentences, an atom must identify exactly one real-world object, no more, no less. Or rather, it suffices that the atom identifies one object within the context in which we are working: if the context is a group with only one Caroline, there will be no ambiguity. Similarly, ABBA is unique among all pop groups in the world; there ought to be only one building permit with number 5678; etcetera.

## Examples

`"Caroline"`, `5`, `1917-11-07` `48`, `10.34`, `2.`, `.001`, `-125`, `+5.33333`, `2.5E2`, `5E-3`

## Syntax

The syntax of atoms is largely taken from [ISO8601](https://www.iso.org/iso-8601-date-and-time-format.html) and corresponds to the syntax of [SQL](https://www.w3schools.com/sql/func_sqlserver_convert.asp) and [Excel](https://support.office.com/en-us/article/format-numbers-as-dates-or-times-418bd3fe-0577-47c8-8caa-b4d30c528309). \(Acknowledgement: the following text was [adapted from Wikipedia](https://en.wikipedia.org/wiki/ISO_8601)\)

* Date and time values are ordered from the largest to smallest unit of time: year, month \(or week\), day, hour, minute, second, and fraction of second. The lexicographical order of the representation thus corresponds to chronological order, except for date representations involving negative years. This allows dates to be naturally sorting\|sorted by, for example, file systems.
* Each date and time value has a fixed number of digits that must be padded with leading zeros.
* Representations can be done in one of two formats - a basic format with a minimal number of separators or an extended format with separators added to enhance human readability. The separator used between date values \(year, month, week, and day\) is the hyphen, while the colon is used as the separator between time values \(hours, minutes, and seconds\).
* For reduced accuracy, any number of values may be dropped from any of the date and time representations, but in the order from the least to the most significant. For example, "2004-05" is a valid ISO 8601 date, which indicates May \(the fifth month\) 2004. This format will never represent the 5th day of an unspecified month in 2004, nor will it represent a time-span extending from 2004 into 2005.
* If necessary for a particular application, the standard supports the addition of a decimal fraction to the smallest time value in the representation.

## Semantics

Atoms come in the following types:

|  |  |  |
| :--- | :--- | :--- |
|  |  |  |

