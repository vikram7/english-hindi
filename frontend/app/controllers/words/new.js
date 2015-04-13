import Ember from "ember";
// const alias = Ember.computed.alias;

// export default Ember.Controller.extend({
//   categories: ["adjective", "noun", "phrase", "verb"],
//   actions: {
//     newWord: function() {
//       var text_hindi = this.text_hindi;
//       var text_romanized = this.text_romanized;
//       debugger;

//       var word = this.store.createRecord('word', {
//         text_hindi: text_hindi,
//         text_romanized: text_romanized,
//       });

      // var category = this.store.createRecord('category', { part_of_speech: this.category });
//       category.save();

//       var meaning = this.store.createRecord('meaning', { text: this.meaning });
//       meaning.save();

//       // word.set('category', category)
//       //   .set('meaning', meaning);

//       // word.get('category').pushObject(category);

//       word.save().then(function() {
//         this.transitionToRoute('words.random');
//       });
//     }
//   }
// });

// export default Ember.Controller.extend({
//   categories: ["adjective", "noun", "phrase", "verb"],
//   actions: {
//     newWord: function() {
//       var text_hindi = this.text_hindi;
//       var text_romanized = this.text_romanized;
//       var part_of_speech = this.part_of_speech;
//       var text = this.meaning;

//       var word = this.store.createRecord('word', {
//         text_hindi: text_hindi,
//         text_romanized: text_romanized
//       });

//       this.store.find('category', { part_of_speech: part_of_speech }).then(function(category){
//         word.set('category', category);
//       });

//       this.store.find('meaning', { text: text }).then(function(meaning) {
//         word.set('meaning', meaning);
//       });

//       debugger;
//     }
//   }
// });

export default Ember.Controller.extend({
  partOfSpeech: ["adjective", "noun", "phrase", "verb"],
  actions: {
    newWord: function() {
      var text_hindi = this.get('text_hindi');
      var text_romanized = this.get('text_romanized');
      var part_of_speech = this.get('part_of_speech');
      var text = this.get('meaning');

      var word = this.store.createRecord('word', {
        text_hindi: text_hindi,
        text_romanized: text_romanized,
        category_part_of_speech: part_of_speech,
        meaning_text: text
      });

      word.save();
    }
  }
});
