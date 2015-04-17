import Ember from 'ember';

export default Ember.Route.extend({
  queryParams: {
    refreshPage: {
      refreshModel: true
    }
  },
  model: function(params) {
    return this.store.find('word', params.word_id);
  },
  actions: {
    deleteWord: function() {
      var _this = this;
      var currentWord = this.currentModel;
      this.store.find('word', currentWord.id).then(function(word) {
        word.destroyRecord().then(function(){
          _this.transitionTo('words.random');
        });
      });
    },
    speakWord: function() {
      var currentWord = this.currentModel;
      var textHindi = currentWord.get('text_hindi');
      var utterance = new SpeechSynthesisUtterance(textHindi);
      utterance.lang = 'hi-IN';
      utterance.rate = 10;
      window.speechSynthesis.speak(utterance);
    }
  }
});


