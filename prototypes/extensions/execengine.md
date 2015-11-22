# Automated rules
This chapter is about prototypes that Ampersand generates. In essence, an Ampersand-prototype is a database application that helps its users to keep rules satisfied. Keeping one rule satisfied happens in one of the following ways:
1. The rule is imposed by the system. Violations are not tolerated. Any change you make to the data that violates the rule is not accepted by the system, making sure that the rule will never be violated. This rule is called *invariant*.
2. Each violation of the rule is signaled to a role. That signal does not go away until the violation has been corrected. This rule is called *process rule*. Notice that a violation of a process rule may persist. That is because it is meant to be resolved by persons rather than a computer.
3. Each violation of a rule is restored by a robot, which we call the Exec-Engine. Such rules are called *automated*.
4. The rule cannot be violated because of the way Ampersand is built. These rules are called *law*. No effort is needed to maintain them, because they are always true.

This chapter is about automated rules. The Exec-Engine is meant to restore rule violations. This is nice for your users, who have no concern with those violations. As an extra, the Exec-Engine creates an opportunity to make prototype call other programs. This can be useful, for instance to send e-mails or SMS-messages.

This chapter introduces automated rules by example. We will first create a rule, which a user must keep satisfied. We will then automate that process by adding instructions for the Exec-Engine.

## Example (`InsPair` and `DelPair`)
Consider the following example:

    RELATION pl[Project*Person]      MEANING "A project can have a project leader."
    RELATION member[Project*Person]  MEANING "A person can do actual work within a project."
    RELATION coworker[Person*Person] MEANING "Two people are co-workers in a project."
    
The following rule defines coworkers. Two different persons are coworker if they work in the same project. As a person can be either a project leader or a member, we get this rule:

    RULE coworker = (pl\/member)~;(pl\/member)-I

You may interpret `coworker` as a shorthand for the much more complicated expression `(pl\/member)~;(pl\/member)-I`. Quite useful indeed. Now suppose this rule is satisfied in the system. Then some manager assigns a new person, Harry, to the project Zeus-III. To administer that fact in the system, he adds a pair `("Zeus-III", "Harry")` to the relation `member`. Now there is a problem. The prototype will not accept this input, because our rule is violated. For all present workers in the project now have Harry as a new coworker. That should be administered in the relation `coworker` in order to satisfy the rule.

One way to do that is to allow the manager to edit the relation coworker. This is not very convenient for that manager. He will be irritated, as he is forced to enter a number of pairs into the relation `coworker` that is equal to the number of persons in the project. This rule is typically a candidate for automation.

We have to consider that whenever a person is added to the project, that person must be added to `coworker` as well. But when a person is discharged from the project, that person must be removed from `coworker`. We can split the rule in two, knowing that r=s is always equivalent to both r|-s and s|-r.

    ROLE "ExecEngine" MAINTAINS r1
    RULE r1:  (pl\/member)~;(pl\/member)-I |- coworker
    VIOLATION ( TXT "InsPair;coworker;Person;", SRC I, TXT ";Person;", TGT I )
    
    ROLE "ExecEngine" MAINTAINS r2
    RULE r2:  coworker |- (pl\/member)~;(pl\/member)-I
    VIOLATION ( TXT "DelPair;coworker;Person;", SRC I, TXT ";Person;", TGT I)

Let us discuss both rules, starting with the first one. The `ROLE` statement assigns rule r1 to the Exec-Engine. The instruction for the Exec-Engine is given in the `VIOLATION` string. It will be executed for each violation of rule r1.

Elaborating on this example, just which violations will the Exec-Engine resolve? Suppose the project has Alfred and Bob on the team before Harry is assigned. This means that the relation `coworker` contains `("Alfred", "Bob")` and `("Bob", "Alfred")` for starters. When the pair `("Zeus-III", "Harry")` is added to the relation `member`, we get the following violations: `("Alfred", "Harry")`, `("Harry", "Alfred")`, `("Bob", "Harry")`, and `("Harry", "Bob")`. So, the following instructions will be given to the Exec-Engine:

    "InsPair;coworker;Person;Alfred;Person;Harry"
    "InsPair;coworker;Person;Harry;Person;Alfred"
    "InsPair;coworker;Person;Bob;Person;Harry"
    "InsPair;coworker;Person;Harry;Person;Bob"

Note that the violations of rule `r1` are precisely the pairs the Exec-Engine must add to `coworker` to satisfy rule `r1`.
The function `InsPair` is a predefined ExecEngine function, that adds to the population of a relation. The corresponding function `DelPair` removes pairs from the population of a relation. In the example, it is used to removed people from `coworker` that no longer share a project.

# Example (`NewStruct`)
TO BE DONE
# Example (`DelAtom`)
TO BE DONE
# Example (`TransitiveClosure`)
TO BE DONE
# Creating e-mails (another example)
TO BE DONE

## Pitfalls
As an Ampersand user, you are used to getting error messages from the compiler. Yet, errors in rules for the Exec-engine are not signalled by the compiler. Instead, you get run-time error message that tend to be incomprehensible. For the time that researchers are working on this problem, you will have to live with that. It make programming of automated rules error-prone and time consuming. The only piece of advice we can give here is:
- Keep automated rules simple.
- Test thoroughly.
- If it doesn't work as you expect, you are pretty much on your own. There are but few tools to help out.

