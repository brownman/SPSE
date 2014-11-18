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
- **Angular testing:** using Jasmine for assertions


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
db: 'mongodb://localhost/mean-book-test'
}
```

mean.io components:
====

The server's Model
----
- **Mission:** testing model operations
- **Assume:** 
- Model:  Article
- Action: Create and save a new Article

- **Edit:** app/tests/article.server.modle.tests.coffee

```coffeescript
#load libraries we need for testing

# The Express Object:  
app = require("../../server.js")

# The assertion library: Should
should = require("should")

# The database stuff 
mongoose = require("mongoose")
User = mongoose.model("User")
Article = mongoose.model("Article")
```

- **Add unit tests:**

```coffeescript
describe 'Article Model testing goes here:', ->
    user    = null
    article = null

    # required fields for the Article Model:
    beforeEach ->
        user = new User({ name: 'x', family: 'y'})
    
    it 'create a new Article', ->
        article = Article.new()
        article.user = user;
        article.title = 'blaaahh..'
        article.content = '... blah blah ...smilies... etc '
        article.save (err) ->
             should.not.exist err
```
