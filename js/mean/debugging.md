**how to debug:** a Mean application  ?
----

Debugging Angular:
======

- **using:** [batarang](https://chrome.google.com/webstore/detail/angularjs-batarang/ighdmehidhipcmcojjgiloacoafjmpfk?hl=en) chrome extension

Questions:
----
- how to figure out the Angular modules dependencies ?
- which Angular models belong to which scope ?
- which expression has take to longest time to be processed ?




Using Grunt:
----
- automate tasks using grant's community-tasks

questions:
----
- how to add grant task for running node-inspector ?
```javascript
//update npm packages:
//package.json: add grunt-node-inspector

devDependencies: {
..
"grunt-node-inspector": "~0.1.5"
..
}

//update Gruntfile:
//update these blocks(as instructed on the github package's page):
nodemon: {
..
}
concurrent: {
..
}
node-inspector: {
debug: {}
}

//finally: don't forget to register the node-inspector task:
grunt.loadNpmTasks('grunt-node-inspector');

//locate the task in environment: X
//for example: add that task -  to the test environment:
grunt.registerTask('debug',[ .. , .. ]);
```
- run this grunt task:
```bash
grunt debug
```
- open the web-page on:
```
127.0.0.1:8080/debug?port=5858
```
- DONE !
