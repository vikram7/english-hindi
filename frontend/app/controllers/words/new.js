import Ember from "ember";

var WordsNewController = {
  actions: {
    save: function () {
      var word = this.get('model');

      word.save();
      this.transitionToRoute('words.show', word);
    },
  }
};

export default Ember.ObjectController.extend(WordsNewController);
