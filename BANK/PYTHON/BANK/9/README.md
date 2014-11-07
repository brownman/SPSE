python sqlite example
-----
```bash
find . name *.db
```
```sqlite3
sqlite3 /system/../some_table.db
#show its tables:
#>>.tables 
#output: TABLE1, table2

#show TABLE1's scheme: 
#>>.schema TABLE1
#output: CREATE TABLE TABLE1(field1 TEXT, field2 INT ,..field3 KEY, ..)

#print something from TABLE1
#>> select * from TABLE1;
#
```

```python
import sqlite3
conn = sqlite3.connect('/system/../something.db')
cur = con.cursor()
for item in cur.execute('select * from some_table') :
  print item
```
