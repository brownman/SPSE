Exceptions
----
- keywords: try , exept , final


```python
try:
  a = 0/0
exept ZeroDevisionError:
  print 'Error: devide by Zero'
exept Exception as im :
  print im
  
try:
  a = 0/0
exept :
  print 'unknown error'
final:
  print 'the en'
```
