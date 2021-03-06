A simple flashcard program to help memorize Hindi <-> English word translation pairs. To run this locally, make sure to do the following from the root directory:

```
cd frontend
npm install && bower install
..
cd backend
bundle install
rake db:create db:migrate db:seed
```

While in the `backend` directory, run `rails server` to setup your API to be able to get hit on `localhost:3000`. In a separate tab in your terminal, go into the `frontend` directory and run `ember serve --proxy http://localhost:3000`. Now you can go to `localhost:4200` to run the app locally.

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
- Add delete button to word show page

April 16, 2015
- Added word pronunciation audio for word cards with the [Web Speech API Specs](https://dvcs.w3.org/hg/speech-api/raw-file/tip/speechapi.html)
- Styled landing page
- Deployed

April 17, 2015
- Cleaned up CSV seeder

![alt](http://i.imgur.com/f163CS9.gif)
