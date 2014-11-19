Node.js
====

questions:
----
 **Q:**  What is Node.js **spaciality** ?
 
 A:  The server is **none-blocking**: request being qued and handled one after another.

**Q:**  Why is Node.js so **fast** ?

 A:  its code is a compiled binary (using **V8 engine**) 

**Q:**  How Node.js manage javascript on the server ?

 A:  it utilize commonJS design-patterns for scoping code using namespaces *(Keywords: require(),exports,module)*

  **Q:**  how is it possible to extend the Node.js core module: **http** ?
  
  A:  using middleware such as: **Connect** *(Keywords: req , res , next)*

  **Q:** how to build a node.js based application ?
 
- **Example:** node.js app - which uses Connect middleware 

```javascript
var connect = request('connect');
/*ectivating the closure*/
var app = connect();   

var logger = function(req , res , next){
  console.log( req.method, req.url );
  next();
};

var helloWorld = function( req, res, next){
  res.setHeader('Content-Type', 'text/plain');
  res.end('hello world');
};

app.use(logger);

/* Register response: */
/* coupling:  request path + function to be executed */
app.use('/hello', helloWorld ); 
app.listen(3000);
```
