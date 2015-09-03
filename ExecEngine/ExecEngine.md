# The ExecEngine
The ExecEngine ('Exec'ution 'Engine') enables the automated resolution of violations (as well as the execution of any other PHP code for violations). Putting it differently: it provides ampersand prototypes with the capability of doing computations, sending emails, and so on.


## (Process) rules
A basic idea in Ampersand is that invariant rules may not be violated while process rules may be violated. Here is an example:

     personName :: Person * Name [UNI,TOT,INJ]
     MEANING "Every person must have one name, by which he can be identified."
     
     personDOB :: Person * Date [UNI]
     MEANING "A person may have a date of birth"
     
     RULE "Every person must have a DOB": I[Person] |- personDOB;personDOB~

A violation of a process rule indicates that work has to be done, the result of which is that the violation disappears. In the example, we may allow the DOB of a person not to be administered, but that would constitute work, consisting of obtaining and registering the DOB. This work must be assigned to one (or more) actors that are made responsible for this. Such actor(s) are represented by a role (name), as follows:

     ROLE RegistrationOfficer MAINTAINS "Every person must have a DOB"

Rules may be provided with a VIOLATION statement, that helps users to know what went wrong, or, in case of a process rule, helps the actors to resolve the violation. For process rules, we say that violations contain a working instruction (even if it is very crude) for the people that fulfill any of the roles to which rule maintenance is assigned. For the example, this might be:

     RULE "Every person must have a DOB": I[Person] |- personDOB;personDOB~
     VIOLATION (TXT "The DOB of ", SRC persronName, " must still be registered.")



`ExecEngine` is a special role, in the sense that it 

 
