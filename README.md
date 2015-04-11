March 28, 2015
ER Diagram:

![alt](http://i.imgur.com/giTLrQm.png)

Rails backend work
- Generated API for meanings & words
- Added ActiveModel Serializer
- Added seeder file for a 300+ english-hindi word pairs

Ember frontend work
- Add Ember front end
- Update Ember routes to support words index and show pages
- Get word meanings to print out on word show page:

![alt](http://i.imgur.com/tKsF9BQ.png)

March 29, 2015
Rails API testing
- add controllers helper module to spec/support/controllers
- add json equivalence testing module in spec/support/matchers
- add serializer tests

Ember frontend work
- Add bootstrap
- Add devaid theme to front end
- Style words show page

![alt](http://i.imgur.com/u2AZCQA.png)

April 9-10, 2015
- More words styling

![alt](http://i.imgur.com/vunMXxY.png)

- Add ability to click words to show meaning

![alt](http://i.imgur.com/KLXa172.png)

April 11, 2015
- Write random words controller to remove deprecations (there was an old object controller which was proxying everything to the model from the route). Ember is taking away proxying.
- Figured out how to use query params to go "back" to a meaning's word after clicking on the meaning
- Added refresh page with `propertyToggle` in a button
- Styling New Word button with Bootstrap defaults

###Next Steps
- Research liquidfire, Add transitions for flipping flash card
- Add ability to post cards
- reverse flip: I need to pass along the word (using query params) and set that as a property on a controller.
- js hint
- Look at google translate api for sounds
http://translate.google.com/translate_tts?ie=UTF-8&q=%E0%A4%95%E0%A4%B2%E0%A4%BE&tl=hi
- Remove index action

- Consider ES6 syntax
- Add photos for flash card (maybe an API rather than static images?)
- More Tests
