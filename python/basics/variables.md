Variables
====


### Q: what are these creatures ?
```
- variable
- object
- reference
```
A: variable is a name which reference to a memory object which assosiated to a data-type.

----

### Q: assignment of one variable to another variable
#### maybe: copies content ? reference ? generate pointer to a pointer ?
```python
var2=0
var1=var2
var2=1
#does var1 is changed ? 
print var1
#no, because he didn't point to var2 !
```
A: assignment var to var only copy the reference - doesn't create a new one !

-----

### Q: what is the data type of an already signed variable ?
```python
#example:
#define a variable and make it point to a memory location which holds a string 
name='some string'
#define a variable and make it point to a memory location which holds an integer number
name=9
#print the memory location which our variable is pointing at
hex(id(name))
#another way to print the memory location pointed by our variable:
name.__repr___
```
A: variable consist of a name and a memory reference - so variable is not a string or a number but an address !

