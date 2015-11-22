# Automated rules
This chapter is about prototypes that Ampersand generates. In essence, an Ampersand-prototype is a database application that helps its users to keep rules satisfied. Keeping one rule satisfied happens in one of the following ways:
1. A rule is imposed by the system. Violations are not tolerated. Any change you make to the data that violates the rule is not accepted by the system, making sure that the rule will never be violated. This rule is called *invariant*.
2. Each violation of a rule is signalled to a role. That signal does not go away until the violation has been corrected. This rule is called *process rule*
3. Each violation of a rule is restored by a robot, which we call the Exec-Engine. Such rules are called *automated*.
4. The rule cannot be violated because of the way Ampersand is built. These rules are called *law*. No effort is needed to maintain them, because they are always true.

This chapter is about automated rules. Primarily, the Exec-Engine is meant to restore rule violations. This is comfortable for users, who has no worries about resolving those violations. As a side-effect, the Exec-Engine creates an opportunity to make prototype call other programs. This can be useful, for instance to send e-mails or SMS-messages.

This chapter introduces automated rules by example. We will first create a rule, which a user must keep satisfied. We will then automate that process by adding instructions for the Exec-Engine.


## (Process) rules
A basic idea in Ampersand is that invariant rules may not be violated while process rules may be violated. Here is an example:

     personName :: Person * Name [UNI,TOT,INJ]
     MEANING "Every person must have one name, by which he can be identified."
     
     personDOB :: Person * Date [UNI]
     MEANING "A person may have a date of birth"
     
     RULE "Every person must have a DOB": I[Person] |- personDOB;personDOB~

A violation of a process rule indicates that work has to be done, the result of which is that the violation disappears. In the example, we may allow the date of birth (DOB) of a person not to be administered, but that would constitute work, consisting of obtaining and registering the DOB. This work must be assigned to one (or more) actors that are made responsible for this. Such actor(s) are represented by a role (name), as follows:

     ROLE RegistrationOfficer MAINTAINS "Every person must have a DOB"

Rules may be provided with a `VIOLATION statement, that helps users to know what went wrong, or, in case of a process rule, helps the actors to resolve the violation. For process rules, we say that violations contain a working instruction (even if it is very crude) for the people that fulfill any of the roles to which rule maintenance is assigned. For the example, this might be:

     RULE "Every person must have a DOB": I[Person] |- personDOB;personDOB~
     VIOLATION (TXT "The DOB of ", SRC personName, " must still be registered.")
     
Please refer to **XXXXX** for detail about the syntax of the `VIOLATION`-statement.

## The role `ExecEngine`
`ExecEngine` is a special role, that is capable of resolving violations automatically. Whenever this role is assigned to a rule, the `VIOLATION` statement of that rule must contain the working instruction for it to operate. In its most basic form, the `VIOLATION` statement produces a violationmessage of the form

     violationmessage = functionname ; arglist

where `functionname` is the name of a PHP-function, the `;` is used as a separator, and `arglist` is a list of ';'-separted arguments for the function. Consider the following example:

    pl     :: Project * Person  MEANING "A project can have a project leader"
    member :: Project * Person  MEANING "A person can do actual work within a project"
    ww     :: Person * Person   MEANING "Two people are in a project."
    
Suppose we say that a person works with another person if there is a project which they share. This means that either person can be a member or a project leader of a specific project. The following rule populates the relation `ww`:

    ROLE "ExecEngine" MAINTAINS "Works with (populate)" -- Assign the work to the ExecEngine
    RULE "Works with (populate)": ((pl\/member)~;(pl\/member))-I |- ww
    VIOLATION ( TXT "InsPair;ww;Person;", SRC I, TXT ";Person;", TGT I )
    
The function `InsPair` is a predefined ExecEngine function, that adds to the population of a relation. The corresponding function `DelPair` removes pairs from the population of a relation. In the example, it can be used e.g. to ensure that people that no longer share any project are depopulated from the `ww`-relation, as follows:

    ROLE "ExecEngine" MAINTAINS "Works with (depopulate)"
    RULE "Works with (depopulate)": workswith |- ((pl\/member)~;(pl\/member))-I
    VIOLATION ( TXT "DelPair;ww;Person;", SRC I, TXT ";Person;", TGT I)

This example shows a common way to make 'abbreviations', since both rules ensure that

    ww = ((pl\/member)~;(pl\/member))-I
    


 
