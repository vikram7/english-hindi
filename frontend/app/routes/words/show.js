import Ember from 'ember';

export default Ember.Route.extend({
  queryParams: {
    refreshPage: {
      refreshModel: true
    }
  },
  model(params) {
    return this.store.find('word', params.word_id);
  },
  actions: {
    deleteWord() {
      const currentWord = this.currentModel;
      this.store.find('word', currentWord.id).then((word) => {
        word.destroyRecord().then(() => {
          this.transitionTo('words.random');
        });
      });
    },
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
