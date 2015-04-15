import Ember from 'ember';

export default Ember.Route.extend({
  actions: {
    willTransition: function() {
      var controller = this.get('controller');
      controller.set('validationErrors', false);
      controller.set('text_hindi', "");
      controller.set('text_romanized', "");
      }
    }
});
