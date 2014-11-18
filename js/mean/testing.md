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


configuration:
---
- package.json:

```javascript
"DevDependencies": {
"should": "SOME_VERSION",
"supertest": "SOME_VERSION"
}
```
