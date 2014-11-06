Loops
----

- for loop:
```python

list1=[object1 , object2, object2]

for item in list1 :
  print item


for x,y in [(name,'my_name'),(number,'my_number')] :
  print x
  print y


```

- emulating C style for loop: ( by using range )
```
for x in range(1,10,2): #will increment x+=2 
    print x

range(10) #(0, .. 9)
range(1,10) #(1 .. 10)
range(1,10,2) #(1, 3, ..)
```

- while loop
```
while age > 10
    age =  int(   raw_input "some question ?" )
    if age > 10 :
        print "your age is > 10 "
    else :
        print "your age is <= 10"
        
```


