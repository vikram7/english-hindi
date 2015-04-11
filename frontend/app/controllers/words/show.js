import Ember from "ember";
const alias = Ember.computed.alias;

export default Ember.Controller.extend({
  queryParams: ['refreshPage'],
  refreshPage: false,
  word: alias("model"),

  actions: {
    newModel () {
      this.toggleProperty('refreshPage');
    }
  }
});
