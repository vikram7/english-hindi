// import Word from './models/word';

export default function(){
  this.transition(
    this.fromRoute('words.random'),
    this.toRoute('meanings.show'),
    this.use('toLeft')
  );
  this.transition(
    this.fromRoute('words.show'),
    this.toRoute('meanings.show'),
    this.use('toLeft')
  );
  this.transition(
    this.fromRoute('meanings.show'),
    this.toRoute('words.show'),
    this.use('toRight')
  );
  this.transition(
    this.toRoute('words.random'),
    this.use('cross-fade', { duration: 500 })
  );
}

