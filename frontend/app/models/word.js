import DS from 'ember-data';

export default DS.Model.extend({
  text_hindi: DS.attr('string'),
  text_romanized: DS.attr('string'),
  forvo_url: DS.attr('string'),
  meaning: DS.belongsTo('meaning', { async: true }),
  category: DS.belongsTo('category', { async: true }),
  meaningText: DS.attr('string'),
  categoryPartOfSpeech: DS.attr('string')
});

