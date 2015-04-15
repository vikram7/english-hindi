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
- Wrote random words controller to remove deprecations (there was an old object controller which was proxying everything to the model from the route). Updated words show action to remove deprecations warnings.
- Figured out how to use query params to go "back" to a meaning's word after clicking on the meaning
- Added refresh page with `propertyToggle` in a button
- Styling New Word button with Bootstrap defaults
- Added liquidfire transitions for words <-> meanings

![alt](http://i.imgur.com/mVSRh63.gif)

April 12, 2015
- Redid navbar with Bootstrap custom defaults

April 13, 2015
- Added ability to post cards
  - by adding fields to ember word model
  - having the server take care of creating the word
- Replaced custom flashcard css with bootstrap's `well`

April 14, 2015
- Added first implementation of validations / error messages
- Server side fix for meaning text validation

April 15, 2015
- Cleared template and error messages when trying to add new card (by updating the controller properties in the route)
- Styled part of speech in new card form (ember idx forms select)

###Next Steps
- Fix styling of "Add Card" link
- Add Edit card ability
- Add Delete card ability
- Transition for random word <-> random word
- More Tests
- Look at google translate api for sounds [link](http://translate.google.com/translate_tts?ie=UTF-8&q=%E0%A4%95%E0%A4%B2%E0%A4%BE&tl=hi)

- Replace 'placeholder' cards with romanized text
- Add uniqueness constraint for words?
- Remove index action
- Consider ES6 syntax
- Add photos for flash card (maybe an API rather than static images?)
