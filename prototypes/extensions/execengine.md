# Automated rules
This chapter tells you how to specify automated manipulations for populations by prototypes that Ampersand generates (and as a side-effect, you can do all sorts of other neat things). 

In essence, an Ampersand-prototype is a database application that helps its users to keep rules satisfied. Keeping one rule satisfied happens in one of the following ways:
1. The rule is imposed by the system. Violations are not tolerated. Any change you make to the data that violates the rule is not accepted by the system, making sure that the rule will never be violated. Such rules are called *invariants*.
2. Each violation of the rule is signaled to a role. That signal does not go away until the violation has been corrected. Such rules are called *process rules*. Notice that a violation of a process rule may persist. That is because it is meant to be resolved by persons rather than a computer.
3. Each violation of a rule is restored by a robot, which we call the Exec-Engine. Such rules are called *automated*.
4. The rule cannot be violated because of the way Ampersand is built. These rules are called *laws*. No effort is needed to maintain them, because they are always true.

This chapter is about automated rules. The Exec-Engine is meant to restore violations of automated rules. This is nice for your users, who have no concern with those violations. As an extra, the Exec-Engine creates an opportunity to make prototypes call other programs, e.g. to send e-mails or SMS-messages.

This chapter introduces automated rules by example. We will first create a rule, which a user must keep satisfied. We will then automate that process by adding instructions for the Exec-Engine.

The examples are taken from the demo script [Project Administration Example](https://github.com/AmpersandTarski/ampersand-models/tree/master/Examples/ProjectAdministration "from AmpersandTarski/ampersand-models"), that you can run to reproduce everything that is shown below.

## Example (`InsPair` and `DelPair`)
Consider the following example:

    RELATION pl[Project*Person]      MEANING "A project can have project leaders."
    RELATION member[Project*Person]  MEANING "A person can do actual work within a project."
    RELATION coworker[Person*Person] MEANING "Two people are co-workers in a project."
    
The following rule defines coworkers. Two different persons are coworker if they work in the same project. As a person can be either a project leader or a member, we get this rule:

    RULE coworker = (pl\/member)~;(pl\/member)-I

This rule basically says that `coworker` is shorthand for the much more complicated expression `(pl\/member)~;(pl\/member)-I`. Quite useful indeed. Now suppose this rule is satisfied in the system. Then some manager assigns a new person, Harry, to the project Zeus-III. To administer that fact in the system, he adds a pair `("Zeus-III", "Harry")` to the relation `member`. Now there is a problem. The prototype will not accept this input, because our rule is violated. For all present workers in the project now have Harry as a new coworker. That should be administered in the relation `coworker` in order to satisfy the rule.

One way to do that is to allow the manager to edit the relation coworker. This is not very convenient for that manager. He will be irritated, as he is forced to enter a number of pairs into the relation `coworker` that is equal to the number of persons in the project plus the number of projectleaders of that project. This rule is typically a candidate for automation.

We have to consider that whenever a person is added to the project, that person must be added to `coworker` as well. But when a person is discharged from the project, that person must be removed from `coworker`. We can split the rule in two, knowing that `r=s` is always equivalent to both `r|-s` and `s|-r`.

    ROLE "ExecEngine" MAINTAINS r1
    RULE r1:  (pl\/member)~;(pl\/member)-I |- coworker
    VIOLATION (TXT "InsPair;coworker;Person;", SRC I, TXT ";Person;", TGT I)
    
    ROLE "ExecEngine" MAINTAINS r2
    RULE r2:  coworker |- (pl\/member)~;(pl\/member)-I
    VIOLATION (TXT "DelPair;coworker;Person;", SRC I, TXT ";Person;", TGT I)

Let us discuss both rules, starting with the first one. The `ROLE` statement assigns rule `r1` to the Exec-Engine. The instruction for the Exec-Engine is given in the `VIOLATION` string. It will be executed for each violation of rule `r1`.

Elaborating on this example, just which violations will the Exec-Engine resolve? Suppose the project has Alfred and Bob on the team before Harry is assigned. This means that the relation `coworker` contains `("Alfred", "Bob")` and `("Bob", "Alfred")` for starters. When the pair `("Zeus-III", "Harry")` is added to the relation `member`, we get the following violations: `("Alfred", "Harry")`, `("Harry", "Alfred")`, `("Bob", "Harry")`, and `("Harry", "Bob")`. So, the following instructions will be given to the Exec-Engine:

    "InsPair;coworker;Person;Alfred;Person;Harry"
    "InsPair;coworker;Person;Harry;Person;Alfred"
    "InsPair;coworker;Person;Bob;Person;Harry"
    "InsPair;coworker;Person;Harry;Person;Bob"

Note that the violations of rule `r1` are precisely the pairs the Exec-Engine must add to `coworker` to satisfy rule `r1`.
The function `InsPair` is a predefined ExecEngine function, that adds to the population of a relation. The corresponding function `DelPair` removes pairs from the population of a relation. In the example, it is used to remove people from `coworker` that no longer share a project.

# Example (`NewStruct`)
Consider the following example:

    RELATION pl[Project*Person]                     MEANING "A project can have project leaders."
    RELATION project[Assignment*Project] [UNI,TOT]  MEANING "Every Assignment must apply to one project"
    RELATION assignee[Assignment*Person] [UNI,TOT]  MEANING "Every Assignment must apply to one person"

The following rule states that for every project leader, an `Assignment` must exist that applies to one `Person` and one `Project`, basically assigning that `Person` to be a project leader for the `Project`.

    RULE "Require Assignment" : pl |- project~;assignee

This calls for the automated creation of an atom in the concept `Assignment`, and the subsequent population of relations `project` and `assignee` using this newly created atom. This is specified as follows:

    ROLE "ExecEngine" MAINTAINS "Create Assignment"
    RULE "Create Assignment" : pl |- project~;assignee
    VIOLATION (TXT "NewStruct;Assignment"
                 , TXT ";project;Assignment;_NEW;Project;", SRC I
                 , TXT ";assignee;Assignment;_NEW;Person;", TGT I
              )

First, we assign the rule `Create Assignment` to the ExecEngine so that it is automated, and we define the rule. In the `VIOLATION`, we use the (predefined) function `NewStruct`, which is followed by a wealth of arguments (separated by semi-colons). 

The first argument specifies the concept in which a new atom must be generated (`Assignment` in the example).
The first argument is followed by any number of 5-tuples (a 5-tuple is a sequence of 5 arguments). This means that the total number of arguments of `NewStruct` is 5k+1, where k is the number of 5-tuples. We make this explicit here because it is our experience that lacking or superfluous semi-colons are often causing erroneous calls `to NewStruct`.

Every 5-tuple consists of the following elements:

1. The name of a relation into which a pair is to be added;
2. the source-concept of that relation;
3. the source-atom of the pair to be added;
4. the target-concept of that relation;
5. the target-atom of the pair to be added.

Note that
- a 5-tuple has the same structure as that of `InsPair` (and `DelPair`);
- the source-atom or the target-atom (or both) can be the keyword `_NEW`, which refers to the atom created by `NewStruct`; in this case, the corresponding concept (obviously) MUST be the same as the first argument in `NewStruct`.

Here is how it works. Suppose the pair `("Zeus-III", "Rhea")` is added to the relation `pl`, meaning that `Rhea` is being made a project leader of project `Zeus-III`. This produces a violation `("Zeus-III", "Rhea")` of the rule `Create Assignment`. The associated VIOLATION statement produces the text

     NewStruct;Assignment;project;Assignment;_New;Project;Zeus-III;assignee;Assignment;_NEW;Person;Rhea
     
which is passed to the Exec-Engine, which executes the function `NewStruct`, the result of which is that

- a new atom in concept `Assignment` is created (let's say it is `Assignment_3495812395`;
- every 5-tuple is preprocessed, meaning that any keyword `_NEW` is replaced with the value of the newly created atom. Then, the result is passed to the function `InsPair`, as defined above, which means (for the given example) that `("Assignment_3495812395", "Zeus-III")` is inserted into relation `project[Assignment*Project]`, and  `("Assignment_3495812395", "Rhea")` is inserted into relation `assignee[Assignment*Person]`.

# Example (`DelAtom`)
In our example, whenever a project participant is discharged from his task, the corresponding Assignment needs to be deleted. We can do this by means of an automated rule:

    ROLE "ExecEngine" MAINTAINS "Delete Assignment"
    RULE "Delete Assignment" :  project~;assignee |- pl\/member
    VIOLATION ( TXT "DelAtom;Assignment;", SRC I)

The function 'DelAtom' is predefined, and takes two arguments:
1. the concept from which an atom is to be deleted;
2. the actual atom to be deleted.

Note that when an atom is deleted, also every pair (in any relation) is deleted if either its source atom or target atom is the deleted atom.

# Example (`{EX}`)
Sometimes, resolving a violation may require multiple function calls, e.g. multiple `InsPair`s, combinations of `InsPair`s and `DelPair`s, etc.

Inserting the tag `{EX}` before each function will do the trick. Here is an example:

    r1 :: A * B
    r2 :: A * C
    newA :: B * C
    
    ROLE ExecEngine MAINTAINS "Create an A"
    RULE "Create an A": newA |- (r1~;r2)-newA
    VIOLATION (TXT "{EX} NewStruct;A"
                         , TXT ";r1;A;_NEW;B;", SRC I
                         , TXT ";r2;A;_NEW;C;", TGT I
               TXT "{EX} DelPair;newA;B;", SRC I, TXT ";C;", TGT I
              )

This does the following: Whenever `newA` is populated with pair `("b","c")`, the rule is violated (as the rule is only true when `newA` has an empty population). The ExecEngine then creates a new atom in concept A (say, `a`), and uses it to populate relations `r1` and `r2` with pairs `("a","b")` and `("a","c")` respectively. Then, the pair `("b","c")` is removed from relation `newA`, thus reverting the violation.

You may want to consider habituating yourself to *always* use {EX} before any function.

# Example (`_;`)
When you try to create or delete pairs with atoms that contain texts, you may find that some texts contain the semi-colon. When such a text is used in a violation statement, this will be interpreted as an argument separator, causing all sorts of unexpected results.
TO BE ELABORATED

# Example (`TransitiveClosure`)
TO BE DONE

# Creating e-mails (another example)
TO BE DONE

##Experiment on your own.
Compile and run the script [Project Administration Example](https://github.com/AmpersandTarski/ampersand-models/tree/master/Examples/ProjectAdministration "from AmpersandTarski/ampersand-models"). Start by reproducing everything that is shown above.

## Pitfalls
As an Ampersand user, you are used to getting error messages from the compiler. Yet, errors in rules for the Exec-engine are not signalled by the compiler. Instead, you get run-time error message that tend to be incomprehensible. For the time that researchers are working on this problem, you will have to live with that. It make programming of automated rules error-prone and time consuming. The only piece of advice we can give here is:
- Keep automated rules simple.
- Test thoroughly.
- If it doesn't work as you expect, you are pretty much on your own. There are but few tools to help out.

