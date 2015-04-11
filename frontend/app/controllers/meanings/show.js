import Ember from "ember";
const alias = Ember.computed.alias;

export default Ember.Controller.extend({
  meaning: alias("model")
});
