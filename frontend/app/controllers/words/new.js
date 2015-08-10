import Ember from "ember";

export default Ember.Controller.extend({
  partsOfSpeech: [{id: 1, partOfSpeech: "adjective"},
                  {id: 2, partOfSpeech: "noun"},
                  {id: 3, partOfSpeech: "phrase"},
                  {id: 4, partOfSpeech: "verb"}],
  actions: {
    newWord: function() {

      const textHindi = this.get('text_hindi');
      const textRomanized = this.get('text_romanized');
      const partOfSpeech = this.get('partOfSpeech');
      const text = this.get('text');

      const word = this.store.createRecord('word', {
        text_hindi: textHindi,
        text_romanized: textRomanized,
        categoryPartOfSpeech: partOfSpeech,
        meaningText: text
      });

      word.save().then(() => {
        this.transitionToRoute('words.show', word);
      }).catch(function(){
        this.set('validationErrors', ["Please enter in all the fields!"]);
      });
    }
  }
});
