import Ember from "ember";

export default Ember.Controller.extend({
  partOfSpeech: ["adjective", "noun", "phrase", "verb"],
  actions: {
    newWord: function() {
      var textHindi = this.get('text_hindi');
      var textRomanized = this.get('text_romanized');
      var partOfSpeech = this.get('part_of_speech');
      var text = this.get('text');
      var _this = this;

      var word = this.store.createRecord('word', {
        text_hindi: textHindi,
        text_romanized: textRomanized,
        categoryPartOfSpeech: partOfSpeech,
        meaningText: text
      });

      word.save().then(function(){
        _this.transitionToRoute('words.show', word);
      }).catch(function(){
        _this.set('validationErrors', ["Please enter in all the fields!"]);
      });
    }
  }
});
