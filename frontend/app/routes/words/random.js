import Ember from 'ember';

export default Ember.Route.extend({
  queryParams: {
    refreshPage: {
      refreshModel: true
    }
  },
  model() {
    return this.store.find('word', { random: true }).then((randomWords) => {
      return randomWords.get("firstObject");
    });
  },
  actions: {
    speakWord() {
      const currentWord = this.currentModel;
      const textHindi = currentWord.get('text_hindi');
      const utterance = new SpeechSynthesisUtterance(textHindi);
      utterance.lang = 'hi-IN';
      utterance.rate = 10;
      window.speechSynthesis.speak(utterance);
    }
  }
});
