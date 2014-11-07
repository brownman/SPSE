packages
----
```bash
#bash
mkdir package1
touch package1/__init__.py
```

```python
#content of __init__.py:
from module1 import Class1 , Class2 
```

```bash
#bash
touch python_demo1.py
```

```python
#content of python_demo1.py

#HERE GOES MAGIC:
import package1 

instance1 = package1.Class1('my name','my family name')
instance1.show() #hopefuly prints our name and family name.
```
