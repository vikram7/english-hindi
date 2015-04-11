import Ember from "ember";
const alias = Ember.computed.alias;

export default Ember.Controller.extend({
  queryParams: ['wordId'],
  wordId: null,
  meaning: alias("model")
});
