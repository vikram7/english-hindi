import Ember from "ember";

export default Ember.Controller.extend({
  partsOfSpeech: [{id: 1, partOfSpeech: "adjective"},
                  {id: 2, partOfSpeech: "noun"},
                  {id: 3, partOfSpeech: "phrase"},
                  {id: 4, partOfSpeech: "verb"}],
  actions: {
    newWord: function() {

      var textHindi = this.get('text_hindi');
      var textRomanized = this.get('text_romanized');
      var partOfSpeech = this.get('partOfSpeech');
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
