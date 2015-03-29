import DS from 'ember-data';

export default DS.Model.extend({
  text_hindi: DS.attr('string'),
  text_romanized: DS.attr('string'),
  meaning: DS.belongsTo('meaning', { async: true }),
  category: DS.belongsTo('category', { async: true })
});

