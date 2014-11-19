Express
=====


questions:
----
**Q:** what are the advantage of using Express ?

A: supply a MVC structure for a Node.js application



Express Objects:
-----
- **Application object:** configure the application

```javascript
app.set(name, value)      //set an Environment variable
app.get(name)             //get an Environment variable
app.engine(ext, callback) //define template engine for spacific file-type rendering 
app.locals                //send **application-level** variable to all rendered templates
/*  Handle HTTP request: */
//  map requests for action using http filters: (http VERB  / url path / url parameters)
app.use([path], callback)                 //create an Express middleware
app.VERB(path, [callback], callback)      
app.route(path).VERB()                    
app.param([name], callback)               
```

- **Request object:**
- **Response object:**
