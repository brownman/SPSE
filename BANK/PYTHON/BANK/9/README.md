python sqlite example
-----

```python
import sqlite3
conn = sqlite3.connect('/system/../something.db')
cur = con.cursor()
for item in cur.execute('select * from some_table') :
  print item
```
