phantomjs
----

- using jquery selectors:

```javascript
// Read the Phantom webpage '#intro' element text using jQuery and "includeJs"

var page = require('webpage').create();

page.onConsoleMessage = function(msg) {
    console.log(msg);
};

page.open("http://www.phantomjs.org", function(status) {
    if ( status === "success" ) {
        page.includeJs("http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js", function() {
            page.evaluate(function() {
                console.log("$(\".explanation\").text() -> " + $(".explanation").text());
            });
            phantom.exit();
        });
    }
});
```
[![Build Status](https://travis-ci.org/ariya/phantomjs.svg?branch=master)](https://travis-ci.org/ariya/phantomjs)
- [examples](https://github.com/ariya/phantomjs/tree/master/examples)
