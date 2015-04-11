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
};
