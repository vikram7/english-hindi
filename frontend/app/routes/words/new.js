import Ember from 'ember';

export default Ember.Route.extend({
  model: function() {
    return this.store.createRecord('word');
  },
  actions: {
    save: function() {
      var _this = this;
      var model = this.currentModel;

      model.save().then(function() {
        _this.transitionTo('words.show', model);
      }, function() {
        // Failed!
      });
    },

    willTransition: function() {
      var model = this.currentModel;

      if (model.get('isNew')) {
        model.deleteRecord();
      }
    }
  }
});
