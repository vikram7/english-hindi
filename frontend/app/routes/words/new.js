import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.find('word');
  },

  setupController: function(controller, model) {
    this._super(controller, model);

    var newWord= this.store.createRecord('word');
    controller.set('newWord', newWord);
  },
  actions: {
    createWord: function(word) {
      word.save();
      this.transitionTo('words.show', word);
      var newWord = this.store.createRecord('word');
      this.controller.set('newWord', newWord);
    }
  }
});
