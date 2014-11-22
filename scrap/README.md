scraping
====

***metaphor:*** the user who visit a web-page is like a pacman in a maze.

-----
- PACMAN: the user who visit a web-site
- TREASURE: the knowledge we look for
- PREDATORS: the ads
* SUPER-POWER: the user can "cheat" the game by:
  * avoid the predators **=** installing an Anti-Ads browser extension.
  * transform a complext maze to simple one **=** scraping the web-site data
   
questions:
---
Q: what is it ?
- independantly - pull external data, store it, format it, present it

Q: why do it ?
- get the data you need , use it the way you desire

Q: how to do it ?
- client side: get the data using AJAX, filter it using selectors.
- server side: use:  a dedicated scraping framework /  javascript REPL tool

**Static scraping:**
-----
- developer did the scraping and store it to a database
- developer serves the data using his own design
- benefits: opinionated UI - control over the data-consumption

**Dynamic scraping:**
-----
- developer create a platform for scraping
- scraping queries become a useful resource 
- all the knowledge is already out there - but not always accessible or comfortable.
- user create custom queries and are able to share them

[![Build Status](https://travis-ci.org/brownman/scrapping.svg?branch=master)](https://travis-ci.org/brownman/scrapping)
