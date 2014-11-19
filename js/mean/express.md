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
**Q:** how to exit the express application when an [error](http://expressjs.com/2x/guide.html#error-handling) occures ?

```javascript
process.on('uncaughtException', function (err) {
  console.error((new Date).toUTCString() + ' uncaughtException:', err.message)
  console.error(err.stack)
  process.exit(1)
})
```

**Application object:** configure the application
**Q:** how to run set express to exit if http response is 404 ?

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

**Request object:** 

**Q:** how to query a JSON property ? 

```javascript
//options:
//+ req.query , req.params, req.body 
//+ req.host, req.ip, req.path
//Example:
req.param(name) //it can be used to query a JSON object()
req.cookies     //it can be used with the middleware: cookieParser() to retrieve cookies sent by a user-agent
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

res.send() 
//is used for non-streaming responses, 
//do alot of background jobs, 
//such as: responding with the proper cache headers
```

**pupular Express middlewares:**
- Morgan: HTTP request logger 
- Session: support for persistant sessions
