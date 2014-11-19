[Express](http://expressjs.com/)
=====

[![Build Status](https://travis-ci.org/strongloop/express.svg?branch=master)](https://travis-ci.org/strongloop/express)


questions:
----
**Q:** what are the advantage of using Express ?

A: supply a MVC structure for a Node.js application




Express Objects:
-----
**Express process:**

**Q:** how to exit the Express application when an [error](http://expressjs.com/2x/guide.html#error-handling) occures ?

```javascript
process.on('uncaughtException', function (err) {
  console.error((new Date).toUTCString() + ' uncaughtException:', err.message)
  console.error(err.stack)
  process.exit(1)
})
```

**Application object:** configure the application

**Q:** is it possible to instruct Express to download index.html instead of viewing it  ?  

```javascript
 
//
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

**Request object:** 

**Q:** how to query a JSON property ? 

```javascript
//options:
//+ req.query , req.params, req.body 
//+ req.host, req.ip, req.path
//req.cookies     //it can be used with the middleware: cookieParser() to retrieve cookies sent by a user-agent
//Example:
req.param(name) //it can be used to query a JSON object()

```


**Response object:** 

**Q:** how to set a cookie property ? 

```javascript
//options:
//+ res.redirect , res.status, res.set , res.send , res.json , res.render
//Example:
res.cookie(name, value, [options]) 
//using the options parameter we can configure/set cookie properties,
//such as: [ .. , maxAge: 5 ,  .. ] 
```

**Q:** how to configure express to exit if an http response is 404 ?



pupular middlewares:
----
- Morgan: HTTP request logger 
- Session: support for persistant sessions


using middlewares:
-----

**Q:** how to validate the user's name and then greet him ?

A: chaining middlewares:

```javascript
app.post('/', function(req, res){
    res.send('this is a POST request');
});

//logic for function: hasName
//----------------------------
//check if the request has the param 'name': 
req.param('name')
//found?:  
next()
//not found? 
res.send('what is your name ?')

//logic for function: sayHallo
//----------------------------
req.send('hello ' + name);

/*  the middlewares chain:  */
app.get('/', hasName, sayHello);
```

**Q:** how to configure Express to respond to a http request: ( VERB:'get' , PATH:'/' )

**Q:** what is the different between 'var app = express()' on the files: server.js , express.js

**Q:** what will happend if express.js will include: require('./express') ?

----

- config/express.js

```javascript
//bootstrap the Express Object to use a router file
module.exports = function(){
  var express = require('express');
  var app = express() //Initialize the npm module: Express
  require('../app/routes/index.server.routes.js')(app);
  return app;
};
```

- server.js

```javascript
//create a new Express Object and 

var express = require('./config/express');      //
var app = express();
app.listen(3000);
module.exports = app;
//the server is running..
```
 

- app/routes/index.server.routes.js

```javascript
//app/routes/index.server.routes.js
module.exports = function(app){
var index = require('../controllers/index.server.controller');
app.get('/', index.render)
//the config/express.js
};
```
----

- configure sessions
- serving static files
- rendering ejs views
- configure the view system
- env configuration files


