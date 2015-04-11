import Ember from 'ember';
import config from './config/environment';

var Router = Ember.Router.extend({
  location: config.locationType
});

Router.map(function() {
  this.route('words', function() {
    this.route('show', { path: ':word_id'});
    this.route('new');
    this.route('random', { path: '/random' });
  });

  this.route('meanings', function() {
    this.route('show', { path: ':meaning_id'});
  });
});

export default Router;
