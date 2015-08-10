import Ember from 'ember';

export default Ember.Route.extend({
  actions: {
    willTransition() {
      const controller = this.get('controller');
      controller.set('validationErrors', false);
      controller.set('text_hindi', "");
      controller.set('text_romanized', "");
      controller.set('text', "");
      }
    }
});
