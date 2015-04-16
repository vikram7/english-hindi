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
    deleteWord: function(word) {
      var _this = this;
      var currentWord = this.currentModel;
      this.store.find('word', currentWord.id).then(function(word) {
        word.destroyRecord().then(function(){
          debugger;
          _this.transitionTo('words.random');
        });
      });
    }
  }
});
