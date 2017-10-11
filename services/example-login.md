# Login/Logout service

This example defines a login/logout service,
because it is familiar.

## Preliminaries
To link system activities to a person or organisation, we use the notion of `Account`. To log in means to associate a session with the `Account` of the user. To log out means to break that link. When logging in, it is customary that the user identifies herself. In this example we do this with a `UserID` and `Password`.

A `UserId` is used to identify the user by a unique name. In this way, the (system generated) key of the user in the database is kept within the database.

To make it more difficult to use an other person's `Account`, the system registers passwords. A `Password` is a string of characters known to the user only. For this reason, the login interface must not expose the password while the user is typing it.

To isolate a data space for one specific user, we use the notion of session. A `SESSION` corresponds with the notion of session as used in browsers. Ampersand links the session called `'_SESSION'` to the current browser session, which results in the behaviour one would expect of a browser session.

## A specification of the service
A login service allows a user to log in and log out of the system. Here is what it looks like in a browser:
![login service in browser](/assets/ssh1.png)
When you type your name, it shows up in the field Userid, but when you type in the password it is obscured by dots (as we would expect).
![](/assets/ssh2.png)
When we then type `<enter>`, the login functionality disappears and the logout functionality appears:
![](/assets/ssh3.png)
```
INTERFACE Login : '_SESSION'[SESSION] cRud BOX <ROWSNL>
   [ "Login": I - sessionAccount;sessionAccount~ cRud BOX <HCOLS>
      [ "Userid"   : loginUserid cRUd
      , "Password": loginPassword crUd -- crUd is needed for Passwords
      ]
   , "Logout": I /\ sessionAccount;sessionAccount~ cRud BOX <ROWSNL>
      [ "Logout": I cRud BOX <HCOLS>
         [ "Logout?": logoutRequest cRUd
         , "UserID": sessionUserid cRud
         ]
      ]
   ]
```

