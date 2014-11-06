Data types
====

strings:
---


- string types:
```python
#ascii:
s1='regular string'

#unicode:
s1 = u`to unicode string`

#raw format
s1 = r`to raw string`
```

- string operations: 
```python
#concatination:
s1 + s2

#repeat
buffer = "A" * 20

#slicing
string[start:end:steps]
```
- string methods: find, replace(actually creates another string object), split
- strings are immutable objects: 
- example:

- string convertion: 
```python
#convert to unicode string
s1 = unicode(str2)

#convert to regular string(ascii charecters)
str_unicoded = str(str2)
s1=str(42)
```

```python
name='someone'
#it is possible to print a charecter at spacific index:
print name[0]
#however - it is impossible to change it :
name[0] = 'x' #errr

```

numbers:
------
 
```python
#x to the power y
x**y
```



lists:
-------
- lists are heterogeneous collection of objects, they can be nested
```python
list1 = [ 1, 2 , [3,4] , "a" ]

```
