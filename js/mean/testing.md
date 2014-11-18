Testing
====


questions:
----

- **Q: how to test the Mean's server component ?** 
- A: using express tests

- **Q: how to test the Mean's client component ?** 
- A: using angular tests



Server testing:
-----
- **node.js cli-tool:** using Mocha
- **controller:** using SuperTest for HTTP assertions
- **models:** using Should.js for model assertions


Client testing:
------
- **Angular cli-tool:** using Karma
- **Angular testing:** using Jasmine for assertion


installation:
---
- package.json:

```javascript
"DevDependencies": {
"should": "SOME_VERSION",
"supertest": "SOME_VERSION"
}
```

configuration:
-----
- updating the **development** environment: 
- edit config/env/development.js:

```javascript
//create a dedicated DB for testing:
module.exports = {
db: 'mongod://localhost/mean-book-test'
}
```

testing the Express model
----
- **Mission:** testing model operations
- **Assume:** 
- Model:  Article
- Action: Create and save a new Article

- Edit: app/tests/**article.server.modle.tests.js**

```javascript
/* The Express Object:  */
var app = require('../../server.js'),

/* The assertion library: should*/
    should = require('should'),
    
/* The database stuff */
    mongoose = require('mongoose'),
    user     = mongoose.model('User'),
    article  = mongoose.model('Article');
    
//
```
