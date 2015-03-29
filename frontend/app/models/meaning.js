import DS from 'ember-data';

export default DS.Model.extend({
  text: DS.attr('string'),
  category: DS.belongsTo('category', { async: true }),
  words: DS.hasMany('word', { async: true })
});

