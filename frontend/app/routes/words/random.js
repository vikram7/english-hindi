import Ember from 'ember';

export default Ember.Route.extend({
  queryParams: {
    refreshPage: {
      refreshModel: true
    }
  },
  model: function() {
    return this.store.find('word', { random: true }).then(function(randomWords){
      return randomWords.get("firstObject");
    });
  },
  actions: {
    speakWord: function(word) {
      var currentWord = this.currentModel;
      var textHindi = currentWord.get('text_hindi');
      var utterance = new SpeechSynthesisUtterance(textHindi);
      utterance.lang = 'hi-IN';
      utterance.rate = 10;
      window.speechSynthesis.speak(utterance);
    }
  }
});
