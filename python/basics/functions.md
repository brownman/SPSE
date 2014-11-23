Functions
-----
- default values
- trigger functions
- import modules
- getting use input from the command line

```python
import sys

def func1(arg1, age='13'):
  print 'hello ' + arg1
  print 'age ' + age
  
func1(sys.argv[1])
```
