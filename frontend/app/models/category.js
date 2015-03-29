import DS from 'ember-data';

export default DS.Model.extend({
  part_of_speech: DS.attr('string'),
  meanings: DS.hasMany('meaning', { async: true }),
  words: DS.hasMany('word', { async: true })
});
