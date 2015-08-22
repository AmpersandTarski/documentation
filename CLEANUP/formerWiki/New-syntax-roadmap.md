We will update the Ampersand syntax in 3 steps.
This page describes how we will preserve functionality and testability on the master branch, while minimising merge problems.

Step 1: update P-structure
--------------------------

The first step is to change the P-structure. The goal for the new P-structure is to be more general:

- meanings, purposes, names for all types of objects become parametric (object , text-in-certain-language-and-of-certain-type) pairs
- please help make this list more complete
- please update elements in this list when they are done (mark with 'done')

During the first step, we try to use the master branch: everything may be influenced by this, but the input syntax for Ampersand does not change. This step will not be very democratic.
 
Step 2: update pretty printer
-----------------------------

In this step, we will create a separate branch called `update-pretty-printer` (or something).
This will be a separate branch, such that test cases which use the pretty printer keep working.
This step is the best time to ask for feedback, and to discuss syntax sugar: the branch allows you to run your script with --prettyprint to translate your script (in the old syntax) and see what it will look like in the new syntax.
When we agree on a syntax, we can use this to generate adl files in the new syntax.

Step 3: change parser
---------------------

In this step, we will create the new parser in another branch `change-parser` which branches from `update-pretty-printer`. When done, this branch will merge with master. This step should be as quick as possible, so we need to be able to deny further changes to the syntax at this point.