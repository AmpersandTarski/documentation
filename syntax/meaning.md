# The MEANING statement

## Application
MEANING is used in combination with a RULE or RELATION to add information about the item in natural language. 
The meaning is optional. 
It is a good habit to specify the meaning! The meaning will be printed in the functional specification.


## Syntax

```
MEANING Language? Markup? <text>
```
The `<text>` part is where the the meaning is written down. We support both:
* a simple string, enclosed by double quotes
* any text, starting with `{+` and ending with `-}` 

If you need specific markup, there are several options to do so. The default markup is used, but you can override that here. 

