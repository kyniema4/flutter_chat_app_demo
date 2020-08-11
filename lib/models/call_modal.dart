class Call {
  final String name;
  final String type;
  final String date;
  final bool missedCall;

  Call({this.name, this.type, this.date, this.missedCall});
}

List<Call> calls = [
  Call(name: 'Arla Waing', type: 'mobile', date: '4/8/17', missedCall: false),
  Call(name: 'Alexander', type: 'mobile', date: '29/7/17', missedCall: false),
  Call(name: 'Carza Heldan', type: 'home', date: '23/7/17', missedCall: false),
  Call(
      name: '+61 821 62783672',
      type: 'unknown',
      date: '12/7/17',
      missedCall: true),
  Call(
      name: '+61 844 77721795',
      type: 'unknown',
      date: '9/7/17',
      missedCall: true),
  Call(name: 'Steven Swap', type: 'mobile', date: '23/7/17', missedCall: false),
  Call(
      name: 'Linda Natasha',
      type: 'mobile',
      date: '23/7/17',
      missedCall: false),
];
