Lesson 2
----
- variable is a name which store a reference to an allocated memory location

questions
-----
```python
var2=0
var1=var2
var2=1
#does var1 is changed ? 
print var1
#no, because he didn't point to var2 !




```

IMPORTANT NOTES:
----
- assignment var to var only copy the reference - doesn't create a new one !




types
-----
- variable
- object
- reference


question
----
- what is the data type of an already signed variable ?


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
