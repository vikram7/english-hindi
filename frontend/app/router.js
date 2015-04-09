import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.resource('words', function() {
    this.route('show', { path: ':word_id'});
    this.route('new');
  });

  this.resource('meanings', function() {
    this.route('show', { path: ':meaning_id'});
  });
});

export default Router;
