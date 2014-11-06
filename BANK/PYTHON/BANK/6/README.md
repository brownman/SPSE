Classes
----
- global class
- instance of a class
- inheritance


```python

class Monkey :
  def __init__ (self, name ):
    self.name   =  name
    
  def show :
    print self.name
``` 
-  Extend class Monkey with class: Person 
-  Add attribute: family

```python
class Person(Monkey) : 
  def __init__(self, name, family):
      super(Monkey, self).__init__(name)
      self.family = family 
      
  def show
    print self.name + ' ' + self.family
```
