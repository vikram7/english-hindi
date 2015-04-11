import Ember from 'ember';

export default Ember.Route.extend({
  model: function(params) {
    return this.store.find('word', { random: true }).then(function(randomWords){
      return randomWords.get("firstObject");
    });
  }
});
