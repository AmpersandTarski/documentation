# The PATTERN statement

## Purpose

Patterns are used to isolate discussions about a specific theme to a particular group of stakeholders, who are competent to identify \(define, select, invent, etc.\) rules that define the theme.  
A pattern formalizes the agreement among stakeholders on this particular theme.

## Definition

A pattern is a set of rules that describes a theme or a general reusable solution to a commonly occurring problem.

## Syntax

~~~
PATTERN <Uppercase identifier> 
...
ENDPATTERN
~~~

A model can have as many patterns as you want.  
It has currently no effect on how the code is processed.

The interface definition must be outside a pattern

A pattern contains rules in an arbitrary order.  
The context in which these rules are valid must contain the definition for each of the relations that are used in those rules.  
It is good practice to declare all relations in the pattern itself.  
That practice makes the pattern self-contained and therefore more suitable for reuse.

## Explanation

[Design patterns](http://en.wikipedia.org/wiki/Design_pattern) are meant to make solutions reusable.  
On top of that, Ampersand advocates **one theme in one pattern**. Stakeholders confine their discussion to one theme, and deliver the result in one pattern.

A pattern is created when a group of stakeholders is trying to agree on a solution for a particular problem. The agreements they reach are written as rules, which are collected in a pattern.  
Therefore, they are independent from a particular context.

## Restrictions

In the current implementation of Ampersand, patterns are defined within a context. If you want to reuse them, you'll have to cut-and-paste them from one context to another. In the future, there will be a better mechanism for reusing patterns in different contexts.

