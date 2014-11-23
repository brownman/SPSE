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

**Application object:** here goes configurations

**Q:** is it possible to instruct Express to download index.html instead of viewing it  ?  

A: [yes](https://github.com/strongloop/express/blob/master/test/res.download.js)



**Request object:** 

**Q:** how to query a JSON property ? 

```javascript
req.param(name) //it can be used to query a JSON object()
```


**Response object:** 

**Q:** how to set a cookie property ? 

```javascript
//Example:
//using the options parameter we can configure/set cookie properties,
//such as: [ .. , maxAge: 5 ,  .. ]
res.cookie(name, value, [options]) 
```

**Q:** how to configure express to exit if an http response is 404 ?



pupular middlewares:
----
- Morgan: HTTP request logger 
- Session: support for persistant sessions


using middlewares:
-----

**Q:** how to validate the user name and then greet him ?

A: solution using middlewares chaining:

```javascript
app.post('/', function(req, res){
    res.send('this is a POST request');
});

/* logic for function: hasName */
//----------------------------
//check if the request has the param 'name': 
var express = require('express');

var hasName = function(req, res, next){
  if( req.param('name')   ){
      next();
  }
  else {
      res.send('what is your name ?')
  }

};

var sayHello = function(){
    req.send('hello ' + name);
};

/* logic for function: sayHallo */
//----------------------------
/*  the middlewares chain:  */
app.get('/', hasName, sayHello);
app.listen(3000);
```

----


**Q:** how to configure Express to respond to a http request: ( VERB:'get' , PATH:'/' )

**Q:** what is the different between **'var app = express()'** in the files: server.js , express.js

**Q:** what will happend if express.js will include: require('./express') ?



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


- [security](http://www.slideshare.net/d0cent/nodejs-security)
- [REST API](http://coenraets.org/blog/2012/10/creating-a-rest-api-using-node-js-express-and-mongodb/)

to be covered NEXT:
---
- configure sessions
- serving static files
- rendering ejs views
- configure the view system
- env configuration files

